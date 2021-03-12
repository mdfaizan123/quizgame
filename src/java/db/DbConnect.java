/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

/**
 *
 * @author MD FAIZAN
 */

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;


public class DbConnect {
    
    private final Connection c;
    private final Statement st;
    private PreparedStatement getQuestion,insertResult,getlastId;
    public DbConnect() throws Exception{
        Class.forName("com.mysql.jdbc.Driver");
        c=DriverManager.getConnection("jdbc:mysql://localhost:3306/quizgame","root","19142612");
        st=c.createStatement();
        
        getQuestion=c.prepareStatement("select *  from  question where level=? and id>? limit 1");   // get all 5 question from database
        insertResult=c.prepareStatement("insert into result (name,score,questionId,answer,date) values(?,?,?,?,now())");  // inset result in database
        getlastId=c.prepareStatement("select id from  question where level=?  order by id desc limit 1");    // get last id for recycle all question in sequence for other user
    } 
    
//    get last id for recycle all question in sequence for other user
    public int getlastId(String level) throws SQLException{
        int count=1;
        getlastId.setString(1,level);
        ResultSet rs=getlastId.executeQuery();
        if(rs.next()){
            count=rs.getInt("id");
        }
        return count;
    }
//    get all 5 question from database
    public java.util.HashMap getQuestion(String level,int index) throws SQLException{
        getQuestion.setString(1, level);
        getQuestion.setInt(2, index);
        ResultSet rs=getQuestion.executeQuery();
        java.util.HashMap question=new java.util.HashMap();
        if(rs.next()){
            question.put("id", rs.getInt("id"));
            question.put("question1", rs.getString("question1"));
            question.put("question2", rs.getString("question2"));
            question.put("question3", rs.getString("question3"));
            question.put("question4", rs.getString("question4"));
            question.put("question5", rs.getString("question5"));
            question.put("option1", rs.getString("option1"));
            question.put("option2", rs.getString("option2"));
            question.put("option3", rs.getString("option3"));
            question.put("option4", rs.getString("option4"));
            question.put("option5", rs.getString("option5"));
            question.put("answer", rs.getString("answer"));
        }
        return question;
    }
//    inset result in database
    public Boolean insertResult(String name, String score, int questionId, String answer) throws SQLException{
        insertResult.setString(1, name);
        insertResult.setString(2, score);
        insertResult.setInt(3, questionId);
        insertResult.setString(4, answer);
        int x=insertResult.executeUpdate();
        return x!=0;
    }
    
    
}

 
