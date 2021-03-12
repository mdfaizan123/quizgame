/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//check all answer and it's call by using ajax
package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author MD FAIZAN
 */
@MultipartConfig
public class AddResult extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session=request.getSession();
        String answer=(String)session.getAttribute("answer");   //Actual answer 
        String[] answerUser=request.getParameterValues("answer"); //get answer from ajax given by user
        String[] answerArray=answer.split(",");  //seprate in array all answer
        int index=0;  // tatal correct answer
        boolean insertResult=true;
        //check right answer by compare original answer and given by user
        for(int i=0;i<5;i++){
            if(Integer.parseInt(answerUser[i])==Integer.parseInt(answerArray[i])){
                index++;
            }
        }
        //make string seprate by comma of all answer given by user
        String ans=answerUser[0]+","+answerUser[1]+","+answerUser[2]+","+answerUser[3]+","+answerUser[4];
        
        try {
            String[] resultScore={"very Poor(0)","Poor (1)","Bad (2)","Good (3)","Strong (4)","Very Strong (5)"};
            //Result Store into data base 
            db.DbConnect db=new db.DbConnect();
            insertResult=db.insertResult((String)session.getAttribute("name"), resultScore[index], (int)session.getAttribute("id"), ans);
        } catch (Exception ex) {
            Logger.getLogger(AddResult.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        session.setAttribute("index", index);  //set total right answer in session for display result on user screen
        
        try (PrintWriter out = response.getWriter()) {
            if(insertResult){
               out.print("yes");  //response yes to the ajax if data inserted successful in database
            }
        }
    }


}
