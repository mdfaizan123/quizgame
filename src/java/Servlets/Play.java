/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
// get all 5 question 
package Servlets;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author MD FAIZAN
 */
public class Play extends HttpServlet {
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
//    last question access by user
    private static int easy=0;
    private static int medium=0;
    private static int hard=0;
//    last id in database 
    private static int easylast=1;
    private static int mediumlast=1;
    private static int hardlast=1;
    
    public Play() throws Exception{
//        get last id from database for make circular
        db.DbConnect db=new db.DbConnect();
        easylast=db.getlastId("Easy");
        mediumlast=db.getlastId("Medium");
        hardlast=db.getlastId("Hard");
    }
    
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session=request.getSession();
        //get level and name of the user
        String level=request.getParameter("level");
        String name=request.getParameter("name");
        
        java.util.HashMap question;
        try {
            //get all 5 question from database according to level
            db.DbConnect db=new db.DbConnect();
            if(level.equalsIgnoreCase("Easy")){
                easy=easy%easylast;   //make circular when reach the last index
                question=db.getQuestion(level,easy);
                easy=(int) question.get("id");
            }
            else if(level.equalsIgnoreCase("Medium")){
                medium=medium%mediumlast;    //make circular when reach the last index
                question=db.getQuestion(level,medium);
                medium=(int) question.get("id");
            }
            else{
                hard=hard%hardlast;    //make circular when reach the last index
                question=db.getQuestion(level,hard);
                hard=(int) question.get("id");
            }
            
//            set parameter in session for further use
            session.setAttribute("name", name);
            session.setAttribute("id", question.get("id"));
            session.setAttribute("level", question.get("level"));
            session.setAttribute("answer", question.get("answer"));
            request.setAttribute("question", question);   // pass all qustion to play.jsp
            request.getRequestDispatcher("/play.jsp").forward(request, response);
            
        } catch (Exception ex) {
            Logger.getLogger(Play.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex);
            response.sendRedirect("dd");
        }
        
    }

}