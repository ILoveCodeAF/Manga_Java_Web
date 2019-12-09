/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utils;

/**
 *
 * @author hieule
 */
public class AlertScript {
    public static String toScript(String notify, String location){
        StringBuilder out  = new StringBuilder();
        out.append("<script type=\"text/javascript\">");
        out.append("\n");
        out.append("alert('").append(notify).append("!');");
        out.append("\n");
        out.append("location='").append(location).append("';");
        out.append("\n");
        out.append("</script>");
        return out.toString();
    }
}
