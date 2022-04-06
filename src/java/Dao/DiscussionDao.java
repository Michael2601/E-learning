package Dao;

import Bean.DiscussionForum;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class DiscussionDao {
    JdbcTemplate template;
    
    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }
    public int saveComment(DiscussionForum s){
        String sql="insert into discussion_forum(video_id,username,comment,date) values('"
                +s.getVideoid()+"','"+
                s.getUsername()+"','"+
                s.getComment()+"','"+
                new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime()) + "')";
        return template.update(sql);
    }
    public List<DiscussionForum> getComments(int id){
        return template.query("select * from discussion_forum where video_id = "+id,new RowMapper<DiscussionForum>(){
            @Override
            public DiscussionForum mapRow(ResultSet rs, int row) throws SQLException {
                DiscussionForum e = new DiscussionForum();
                e.setId(rs.getInt(1));
                e.setVideoid(rs.getInt(2));
                e.setUsername(rs.getString(3));
                e.setComment(rs.getString(4));
                e.setDate(rs.getString(5));
                return e;
            }
        });
    }
    
}
