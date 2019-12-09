/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author hieule
 */
public class Manga {
    private int id;
    private String mangaName;
    private float price;
    private String des;
    private String authorName;

    public Manga() {
    }

    public Manga(String mangaName, float price, String des, String authorName) {
        this.mangaName = mangaName;
        this.price = price;
        this.des = des;
        this.authorName = authorName;
    }

    public Manga(int id, String mangaName, float price, String des, String authorName) {
        this.id = id;
        this.mangaName = mangaName;
        this.price = price;
        this.des = des;
        this.authorName = authorName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    

    public String getMangaName() {
        return mangaName;
    }

    public void setMangaName(String mangaName) {
        this.mangaName = mangaName;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getAuthorName() {
        return authorName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

   

    
    
}
