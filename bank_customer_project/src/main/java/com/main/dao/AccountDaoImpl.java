package com.main.dao;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.main.model.Account;
import com.main.model.Benificiary;
import com.main.model.Registration;
import com.main.model.Transaction;
import com.main.repository.AccountRepository;
import com.main.repository.BenificiaryRepository;
import com.main.repository.CustomerRepository;
import com.main.repository.TransactionRepository;

@Repository
public class AccountDaoImpl implements AccountDaoInt{
@Autowired 
CustomerRepository repoCust;

@Autowired
AccountRepository repoAcc;

@Autowired
BenificiaryRepository repoBen;

@Autowired
TransactionRepository repoTran;

	public void createAcc(HttpServletRequest req,int id) {
		System.out.println("savings");
		HttpSession session=req.getSession();
		Account ac=new Account();
		Registration r=(Registration) session.getAttribute("regis");
		System.out.println("username"+r.getUserName());
		ac.setRegister(r);
		ac.setAccountNo(id);
		ac.setAccountType("savings");
		ac.setBalance(10000);	
        Date date = new Date();
		ac.setCreatedDate(date);
		repoAcc.save(ac);	
	}
	@Override
	public Account findById(int id,String s) {
		
		return repoAcc.findByAccountType(id,s);
	}
	@Override
	public void createAccWithin(HttpServletRequest request, int id,Benificiary ben) {
		HttpSession session=request.getSession();
		Registration r=(Registration) session.getAttribute("regis");		
		ben.setRegistration(r);
		ben.setIfsc("HDFC6666IFSC");
		repoBen.save(ben);
	}
	@Override
	public void createAccOutside(HttpServletRequest request, int id, Benificiary ben) {
		HttpSession session=request.getSession();
		Registration r=(Registration) session.getAttribute("regis");		
		ben.setRegistration(r);
		repoBen.save(ben);		
	}
	@Override
	public void createAccWithinBank(HttpServletRequest request, int id, Transaction tran) {
		HttpSession session=request.getSession();
		Registration r=(Registration) session.getAttribute("regis");		
		tran.setRegistration(r);
		repoTran.save(tran);
		
	}

}
