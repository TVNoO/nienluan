/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author EndlessLove
 */
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.bind.annotation.RenderMapping;
import dao.*;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import model.*;

/**
 *
 * @author EndlessLove
 */
@Controller
@RequestMapping(value = "/")
public class NewsController {

    @RequestMapping(value = "goNews", method = RequestMethod.GET)
    String goNews(ModelMap mm, HttpServletRequest request) {

        CategoryDAO cdao = new CategoryDAO();
        NewsDAO ndao = new NewsDAO();

        List<News> list = (List<News>) ndao.getAllNews();
        mm.put("listCategory", cdao.getAllcategory());
        mm.put("listNews", list);

        //return "jsp/news";
        return "jsp/news";
    }

    @RequestMapping(value = "goNewsDetail.html", method = RequestMethod.GET)
    String goDetailNews(ModelMap mm, HttpServletRequest request) {
        
        CategoryDAO cdao = new CategoryDAO();
        NewsDAO ndao = new NewsDAO();
        
        int id = Integer.parseInt(request.getParameter("id"));
        News news = ndao.getNews(id);
        
        mm.put("news", ndao.getNews(id));
        mm.put("listCategory", cdao.getAllcategory());

        return "jsp/detail_news";
    }

    @RequestMapping(value = "goManagerNews", method = RequestMethod.GET)
    String goManagerNews(ModelMap mm) {
        
        NewsDAO ndao = new NewsDAO();

        List<News> list = (List<News>) ndao.getAllNews();
        
        mm.put("listNews", list);
        
        return "manager/manager_news";
        
    }

    @RequestMapping(value = "addNews", method = RequestMethod.GET)
    String addNews(ModelMap mm, HttpServletRequest request) {

        String topic = String.valueOf(request.getParameter("topic"));
        String title = String.valueOf(request.getParameter("title"));
        String image = String.valueOf(request.getParameter("image"));
        String content = String.valueOf(request.getParameter("content"));

        News news = new News(topic, title, image, new Timestamp(new Date().getTime()), content);
        NewsDAO ndao = new NewsDAO();

        if (ndao.insertNews(news)) {
            mm.put("msg", "Đăng tin thành công !");
            return "manager/manager_news";
        } else {
            mm.put("msg", "Đăng tin thất bai !");
            return "manager/manager_news";
        }

    }
    
    @RequestMapping(value = "/deleteNews", method = RequestMethod.GET)
    public String deleteNews(ModelMap mm, HttpServletRequest request) {

        CategoryDAO cdao = new CategoryDAO();
        NewsDAO ndao = new NewsDAO();

        int id = Integer.parseInt(request.getParameter("id"));

        News news = ndao.getNews(id);

        if (ndao.deleteNews(news)) {
            mm.put("msg", "Xóa bài thành công !");
            return "manager/manager_news";
        } else {
            mm.put("listCategory", cdao.getAllcategory());
            return "manager/manager_news";
        }
    }
}
