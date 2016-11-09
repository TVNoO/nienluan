package model;
// Generated Oct 16, 2016 7:10:08 PM by Hibernate Tools 4.3.1


import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * News generated by hbm2java
 */
@Entity
@Table(name="news"
    ,catalog="shop"
)
public class News  implements java.io.Serializable {


     private Integer id;
     private String topic;
     private String title;
     private String image;
     private Date dateNews;
     private String content;

    public News() {
    }

    public News(String topic, String title, String image, Date dateNews, String content) {
       this.topic = topic;
       this.title = title;
       this.image = image;
       this.dateNews = dateNews;
       this.content = content;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="id", unique=true, nullable=false)
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    
    @Column(name="topic", nullable=false)
    public String getTopic() {
        return this.topic;
    }
    
    public void setTopic(String topic) {
        this.topic = topic;
    }

    
    @Column(name="title", nullable=false)
    public String getTitle() {
        return this.title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }

    
    @Column(name="image", nullable=false)
    public String getImage() {
        return this.image;
    }
    
    public void setImage(String image) {
        this.image = image;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="dateNews", nullable=false, length=19)
    public Date getDateNews() {
        return this.dateNews;
    }
    
    public void setDateNews(Date dateNews) {
        this.dateNews = dateNews;
    }

    
    @Column(name="content", nullable=false)
    public String getContent() {
        return this.content;
    }
    
    public void setContent(String content) {
        this.content = content;
    }




}


