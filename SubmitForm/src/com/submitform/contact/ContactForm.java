package com.submitform.contact;

import javax.servlet.http.HttpServletRequest;

public class ContactForm {
	
	private String results;
	
	public void verifiedIdentification(HttpServletRequest request){
		String tbUnm = request.getParameter("tbUnm");
	
		String tbPwd1 = request.getParameter("tbPwd1");
		String tbPwd2 = request.getParameter("tbPwd2");
		
		if(tbPwd1.equals(tbUnm + 123)){
			if(tbPwd1 == tbPwd2){
			results = "Successed";
		}else{
			results  = "Try again!";
		}
	  }
	}
	
	public class EmailValidation {
	    public void tbEmail(HttpServletRequest request) {
	    	String tbEmail = request.getParameter("tbEmail");
	        //String email = "SAMPLE_EMAIL";

	        String[] deniedIdCharList = { ",", ";", "'", "\"", "[", "]", "|", "\\",
	                 "=",  "!", "#", "$", "%", "^", "&", "*", "(", ")",
	                "/", "`", "~", ":", "<", ">", "?", "{", "}" };

	        int atLoc = tbEmail.indexOf("@");
	        if (atLoc == -1) {
	            System.out.println("fail");
	        } else {
	            String id = tbEmail.substring(0, atLoc);
	            String domain = tbEmail.substring(atLoc + 1, tbEmail.length());

	            if (domain.indexOf("@") != -1) {
	                System.out.println("fail");
	            }

	            else {

	                for (String deny : deniedIdCharList) {
	                    if (id.indexOf(deny) != -1) {
	                        System.out.println("fails");
	                    }
	                    if (domain.indexOf(deny) != -1) {
	                        System.out.println("fails");
	                    }

	                }
	                if (id.length() == 0 || domain.length() == 0) {
	                    System.out.println("fails");
	                }

	                int dotIndex = domain.indexOf(".");
	                String host = domain.substring(0, dotIndex);
	                String extn = domain.substring(dotIndex + 1);
	                if (host.length() == 0) {
	                    System.out.println("fail");
	                }
	                if ((extn.length() != 2 && extn.length() != 3 && extn.length() != 5)) {
	                    System.out.println("fail");
	                }
	                if (extn.length() == 5 && extn.indexOf(".") == -1) {
	                    System.out.println("fail");
	                }

	            }

	        }

	    }
	}

	public String getResults() {
		return results;
	}

	public void setResults(String results) {
		this.results = results;
	}

}
