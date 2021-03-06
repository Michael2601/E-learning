package Controller;

import Bean.School;
import Dao.SchoolDao;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

public class CreatePDF {
    
    @Autowired
    static SchoolDao scldao;
    
    private static final Font TIME_ROMAN = new Font(Font.FontFamily.TIMES_ROMAN, 18,Font.BOLD);
    private static final Font TIME_ROMAN_SMALL = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.BOLD);
    
    /**
     * @param file
     * @param pending
     * @param accepted
     * @param rejected
     * @return
     */
    public static Document createPDF(String file,List<School> pending,List<School> accepted,List<School> rejected) {
        
        Document document = null;
        try {
            document = new Document();
            PdfWriter.getInstance(document, new FileOutputStream(file));
            document.open();
            addMetaData(document);
            addTitlePage(document);
            createTable(document,pending,accepted,rejected);
            document.close();
            
        } catch (FileNotFoundException | DocumentException e) {
            e.printStackTrace();
        }
        return document;
    }
    
    private static void addMetaData(Document document) {
        document.addTitle("Learn : Отчёт");
        document.addSubject("Learn : Отчёт");
        document.addAuthor("Learn Portal");
        document.addCreator("Learn Portal");
    }
    
    private static void addTitlePage(Document document)throws DocumentException {
        Paragraph preface = new Paragraph();
        creteEmptyLine(preface, 1);
        preface.add(new Paragraph("Learn : Отчёт", TIME_ROMAN));
        
        creteEmptyLine(preface, 1);
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
        preface.add(new Paragraph("Отчёт создан "+ simpleDateFormat.format(new Date()), TIME_ROMAN_SMALL));
        document.add(preface);
    }
    
    private static void creteEmptyLine(Paragraph paragraph, int number) {
        for (int i = 0; i < number; i++) {
            paragraph.add(new Paragraph(" "));
        }
    }
    
    private static void createTable(Document document,List<School> pending,List<School> accepted,List<School> rejected) throws DocumentException {
        Paragraph paragraph = new Paragraph();
        creteEmptyLine(paragraph, 2);
        document.add(paragraph);
        PdfPTable table = new PdfPTable(6);
        
        PdfPCell c1 = new PdfPCell(new Phrase("Идентификатор"));
        c1.setHorizontalAlignment(Element.ALIGN_CENTER);
        table.addCell(c1);
        
        c1 = new PdfPCell(new Phrase("Наименование организации"));
        c1.setHorizontalAlignment(Element.ALIGN_CENTER);
        table.addCell(c1);
        
        c1 = new PdfPCell(new Phrase("Регистрационный номер"));
        c1.setHorizontalAlignment(Element.ALIGN_CENTER);
        table.addCell(c1);
        
        c1 = new PdfPCell(new Phrase("Почта"));
        c1.setHorizontalAlignment(Element.ALIGN_CENTER);
        table.addCell(c1);
        
        c1 = new PdfPCell(new Phrase("Дата вступления"));
        c1.setHorizontalAlignment(Element.ALIGN_CENTER);
        table.addCell(c1);
        
        c1 = new PdfPCell(new Phrase("Статус запроса"));
        c1.setHorizontalAlignment(Element.ALIGN_CENTER);
        table.addCell(c1);
        
        table.setHeaderRows(1);
        int i=0;
        for (School school:pending) {
            table.setWidthPercentage(100);
            table.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
            table.getDefaultCell().setVerticalAlignment(Element.ALIGN_MIDDLE);
            table.addCell(""+(++i));
            table.addCell(school.getName());
            table.addCell(school.getRegisterno());
            table.addCell(school.getEmail());
            table.addCell(school.getDate());
            table.addCell("В ожидании");
        }
        for (School school:accepted) {
            table.setWidthPercentage(100);
            table.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
            table.getDefaultCell().setVerticalAlignment(Element.ALIGN_MIDDLE);
            table.addCell(""+(++i));
            table.addCell(school.getName());
            table.addCell(school.getRegisterno());
            table.addCell(school.getEmail());
            table.addCell(school.getDate());
            table.addCell("Подтверждён");
        }
        for (School school:rejected) {
            table.setWidthPercentage(100);
            table.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
            table.getDefaultCell().setVerticalAlignment(Element.ALIGN_MIDDLE);
            table.addCell(""+(++i));
            table.addCell(school.getName());
            table.addCell(school.getRegisterno());
            table.addCell(school.getEmail());
            table.addCell(school.getDate());
            table.addCell("Отклонён");
        }
        document.add(table);
    }
}
