package com.jeppiaar.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jeppiaar.dao.VechileDao;
import com.jeppiaar.model.Vechile;
import com.jeppiaar.util.ConnectionUtil;


@WebServlet("/InsurenceController")
public class InsurenceController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vechileNo=request.getParameter("vechileNo");
		String vechileType = null;
		String insurenceAmount=request.getParameter("insurenceAmount");
		DateFormat format= new SimpleDateFormat("dd/MM/yyyy");
		Date date = null;
		try {
			date = format.parse(request.getParameter("insurenceDate"));
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String sql="select vechile_type from vechile_detials where vechile_no='"+vechileNo+"';";
		try{
			Connection connection=ConnectionUtil.getconnection();
			Statement statement=connection.createStatement();
			ResultSet resultSet=statement.executeQuery(sql);
			while(resultSet.next()){
				vechileType=resultSet.getString("vechile_type");
				
			}
			}
			catch(Exception e){
				e.printStackTrace();
			}
		
		VechileDao vechileDao=new VechileDao();
		Vechile vechile=new Vechile();
		vechile.setVechileNo(vechileNo);
		vechile.setVechileType(vechileType);
		vechile.setInsureneceAmount(insurenceAmount);
		vechile.setInsurenceDate(date);
		try {
			vechileDao.insurence(vechile);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("msg", "valid");
		request.getRequestDispatcher("insurence.jsp").forward(request, response);
	}

	

}
