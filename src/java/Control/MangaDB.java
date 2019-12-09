/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Control;

import Model.Manga;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hieule
 */
public class MangaDB {
    public static void add(Manga manga){
        String sql = "insert into tbl_manga(manga_name, price, des, author_name) "
                + "values (?, ?, ?, ?)";
        Connection conn = ConnectionPool.getInstance().getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, manga.getMangaName());
            ps.setFloat(2, manga.getPrice());
            ps.setString(3, manga.getDes());
            ps.setString(4, manga.getAuthorName());
            
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(MangaDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        ConnectionPool.getInstance().freeConnection(conn);
    }
    
    public static void update(Manga manga){
        String sql = "update tbl_manga "
                + "set manga_name = ?, price = ?, des = ?, author_name = ? "
                + "where id = ?";
        Connection conn = ConnectionPool.getInstance().getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, manga.getMangaName());
            ps.setFloat(2, manga.getPrice());
            ps.setString(3, manga.getDes());
            ps.setString(4, manga.getAuthorName());
            ps.setInt(5, manga.getId());
            
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(MangaDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        ConnectionPool.getInstance().freeConnection(conn);
    }
    
    public static ArrayList<Manga> getMangas(){
        ArrayList<Manga> mangas = new ArrayList<>();
        String sql = "select * from tbl_manga";
        Connection conn = ConnectionPool.getInstance().getConnection();
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            
            String manga_name, author_name, des;
            float price;
            int id;
            while(rs.next()){
                id = rs.getInt("id");
                manga_name = rs.getString("manga_name");
                price = rs.getFloat("price");
                des = rs.getString("des");
                author_name = rs.getString("author_name");
                mangas.add(new Manga(id, manga_name, price, des, author_name));
            }
//            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(MangaDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        ConnectionPool.getInstance().freeConnection(conn);
        return (mangas.isEmpty())? null:mangas;
    }
    
    public static void delete(Manga manga){
        String sql = "delete from tbl_manga where id = ?";
        Connection conn = ConnectionPool.getInstance().getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, manga.getId());
            
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(MangaDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        ConnectionPool.getInstance().freeConnection(conn);
    }
}
