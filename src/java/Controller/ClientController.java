package Controller;

import Bean.Faculty;
import Bean.Feedback;
import Bean.Login;
import Bean.School;
import Bean.Student;
import Dao.FacultyDao;
import Dao.FeedbackDao;
import Dao.SchoolDao;
import Dao.StudentDao;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ClientController {
    @Autowired
            FeedbackDao fbdao;
    @Autowired
            SchoolDao scldao;
    @Autowired
            StudentDao studdao;
    @Autowired
            FacultyDao facdao;
    @Autowired
            private JavaMailSender mailSender;
    
    /***********
     * Home page
     * @return
     ************/
    @RequestMapping(value="index",method = RequestMethod.GET)
    public String view_request()
    {
        return "index";
    }
    
    /*******
     * About us
     * @return
     *********/
    @RequestMapping(value="about",method = RequestMethod.GET)
    public String aboutUs()
    {
        return "about";
    }
    
    /********
     * Contact Us
     * @return
     *********/
    @RequestMapping(value="contact",method = RequestMethod.GET)
    public String contact()
    {
        return "contact";
    }
    
    /*********
     * Save Feedback
     * @param fb
     * @param session
     * @return
     ********/
    @RequestMapping(value="savefeedback", method = RequestMethod.POST)
    public String saveFeedback(@ModelAttribute("fb") Feedback fb, HttpSession session){
        fbdao.saveFeedback(fb);
        session.setAttribute("message","Спасибо за ваш отзыв ");
        return "redirect:/contact";
    }
    
    /**********
     * Login Page
     * @return
     **********/
    @RequestMapping(value="login",method = RequestMethod.GET)
    public String login()
    {
        return "login";
    }
    
    /***********
     * @name Login Check
     * @param request
     * @param response
     * @param session
     * @param modelMap
     * @param login
     * @return
     *********/
    @RequestMapping(value = "loginCheck", method = RequestMethod.POST)
    public String loginCheck(
            HttpServletRequest request,
            HttpServletResponse response,
            HttpSession session, ModelMap modelMap,
            @ModelAttribute("login") Login login){
        
        String user = "";
        
        if(request.getParameter("loginas")!=null)
            user=request.getParameter("loginas");
        
        if(user.equals("student"))
        {
            Student student = studdao.validateStudent(login);
            if (null != student) {
                session.setAttribute("username", student.getUsername());
                session.setAttribute("id",student.getId());
                session.setAttribute("standard",student.getStandard());
                session.setAttribute("school_id",student.getSchool_id());
                session.setAttribute("medium", student.getMedium());
                return "redirect:/Student/student_home";
            } else {
                modelMap.put("error", "Некорректное имя пользователя или пароль ");
                return "login";
            }
        }
        
        if(user.equals("teacher"))
        {
            Faculty faculty = facdao.validateFaculty(login);
            if (null != faculty) {
                session.setAttribute("username", faculty.getUsername());
                session.setAttribute("school_id",faculty.getSchool_id());
                session.setAttribute("faculty",faculty.getFname()+" "+faculty.getMname()+" "+faculty.getLname());
                session.setAttribute("id",faculty.getId());
                return "redirect:/Faculty/faculty_home";
            } else {
                modelMap.put("error", "Некорректное имя пользователя или пароль ");
                return "login";
            }
        }
        
        if(user.equals("school"))
        {
            School school = scldao.validateSchool(login);
            if (null != school) {
                if(school.getStatus()!= 0 && school.getStatus() != 2){
                    session.setAttribute("username", school.getUsername());
                    session.setAttribute("id",school.getId());
                    return "redirect:/School/school_home";
                }
                else{
                    modelMap.put("error", "Ваш запрос ещё не обработан");
                    return "login";
                }
            } else {
                modelMap.put("error", "Некорректное имя пользователя или пароль ");
                return "login";
            }
        }
        modelMap.put("error", "Пожалуйста выберите корректную опцию");
        return "login";
    }
    
    /**********
     * School Sign Up Page
     * @return
     *********/
    @RequestMapping(value="signup",method = RequestMethod.GET)
    public String signup()
    {
        return "signup";
    }
    
    /*********
     * Register School
     * @param scl
     * @param modelMap
     * @return
     ********/
    @RequestMapping(value="register", method = RequestMethod.POST)
    public String saveSchool(@ModelAttribute("scl") School scl, ModelMap modelMap){
        scldao.saveSchool(scl);
        modelMap.put("message", "Спасибо за регистрацию. Ваша заявка скоро будет обработана.");
        return "signup";
    }
    
    /********
     * Forgot Password
     * @return
     *********/
    @RequestMapping(value="forgot",method = RequestMethod.GET)
    public String forgot()
    {
        return "forgot";
    }
    /********
     * Forgot Password
     * @param request
     * @param response
     * @param session
     * @param modelMap
     * @param login
     * @return
     *********/
    @RequestMapping(value="sendPassword",method = RequestMethod.POST)
    public String sendPassword(
            HttpServletRequest request,
            HttpServletResponse response,
            HttpSession session, ModelMap modelMap,
            @ModelAttribute("login") Login login)
    {
        String user = "";
        String name = "";
        String email = "";
        String password = "";
        
        if(request.getParameter("loginas")!=null)
            user=request.getParameter("loginas");
        else
        {
            modelMap.put("error", "Пожалуйста выберите верную опцию");
            return "forgot";
        }
        if(user.equals("student"))
        {
            Student student = studdao.validateStudent(login);
            if (null == student){
                modelMap.put("error", "Некорректное имя пользователя или пароль ");
                return "forgot";
            }
            email = student.getEmail();
            name = student.getFname();
            password = student.getPassword();
        }
        
        if(user.equals("teacher"))
        {
            Faculty faculty = facdao.validateFaculty(login);
            if (null == faculty) {
                modelMap.put("error", "Некорректное имя пользователя или пароль ");
                return "forgot";
            }
            email = faculty.getEmail();
            name = faculty.getFname();
            password = faculty.getPassword();
        }
        
        if(user.equals("school"))
        {
            School school = scldao.validateSchool(login);
            if (null != school) {
                if(school.getStatus()== 0 || school.getStatus() == 2){
                    modelMap.put("error", "Ваш запрос скоро будет обрабоьан");
                    return "forgot";
                }
            } else {
                modelMap.put("error", "Некорректное имя пользователя или пароль ");
                return "forgot";
            }
            email = school.getEmail();
            name = school.getName();
            password = school.getPassword();
        }
        
        String subject = "Learn Portal: Запрос пароля";
        String message = "Дорогой пользователь "+name+",\n\n"+
                "Не разглашайте конфеденциальные данные!\n"+
                "Ваш пароль : "+password+"\n"+
                "Благодарим!\n\n"
                + "С уважением,\nLearn \nmylearnportal@gmail.com";
        
        System.out.println("To: " + email);
        System.out.println("Subject: " + subject);
        System.out.println("Message: " + message);
        
        SimpleMailMessage sentemail = new SimpleMailMessage();
        sentemail.setTo(email);
        sentemail.setSubject(subject);
        sentemail.setText(message);
        
        mailSender.send(sentemail);
        
        modelMap.put("message", "Ваш пароль отправлен, проверьте почту");
        return "forgot";
    }
}
