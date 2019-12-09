/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Model.Manga;

/**
 *
 * @author hieule
 */
public class MangaDB {
    public static void addManga(Manga manga){
        String sql = "insert into tbl_manga(manga_name, price, des, author_name"
                + "values (?, ?, ?, ?)";
        
    }
    
    public static void updateManga(Manga manga){
        
    }
}
