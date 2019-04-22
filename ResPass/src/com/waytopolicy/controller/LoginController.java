package com.waytopolicy.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.SessionScope;

import com.waytopolicy.model.User;
import com.waytopolicy.service.UserService;
@Controller
public class LoginController {

	@Autowired
	private UserService userService;

	/*// server starts here
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String vendorPanelView(ModelMap model) {

		return "index";
	}

	// Vendor Login method call from index page
	@RequestMapping(value = "/vendorLogin", method = RequestMethod.GET)
	public String vendorLoginCall(ModelMap model) {
		model.addAttribute("vendorCheck", new Vendor());

		return "vendorLogin";*/
	

	// User Login method call from index page
	@RequestMapping(value = "/AdmLogin", method = RequestMethod.GET)
	public String userLoginCall(ModelMap model) {
		model.addAttribute("userCheck", new User());
		/*int loginStatus = 0;
		request.getSession().setAttribute("loginStatus", loginStatus);*/
		// model.addAttribute("loginStatus",loginStatus);
		return "AdmLogin";
	}

	/*// User Registration method call from Login Page
	@RequestMapping(value = "/newUserRegistration", method = RequestMethod.GET)
	public String userRegistrationCall(ModelMap model) {
		model.addAttribute("newUserAdd", new User());
		return "newUserRegistration";
	}
	
	// Vendor Registration Method call from Login page
	@RequestMapping(value = "/newVendorRegistration", method = RequestMethod.GET)
	public String vendorRegistrationCall(ModelMap model) {
		
		model.addAttribute("newVendorAdd", new Vendor());
		return "newVendorRegistration";
	}

	// Vendor Login Verification Method
	@RequestMapping(value = "/vendorLoginCheck", method = RequestMethod.POST)
	public String verifyVendorLogin(@ModelAttribute("vendorCheck") Vendor vendor, Model model,
			HttpServletRequest request, HttpServletResponse response,HttpSession session) {
		System.err.println("Inside Vendor Login Verification Controller");

		
		 * Vendor validity = null;// default value
		 * 
		 * validity = vendorService.verifyLogin(vendor);
		 * System.err.println("Validity= " + validity); if (validity != null) {
		 * 
		 * return "vendorPanel"; }
		 * 
		 * return "failureLogin";
		 

		Vendor dbUser = vendorService.findById(vendor.getId());

		int loginStatus = 0;
		String url = null;
		if (dbUser != null) {
			if (dbUser.getPassword().equals(vendor.getPassword())) {

				loginStatus = 1; // successfull login
			} else {
				loginStatus = -2; // password mismatch

			}
		} else {

			loginStatus = -1; // username not found

		}

		if (loginStatus == 1) {

			url = "vendorPanel";
		} else {
			url = "vendorLogin";

		}
		System.err.println("LoginStatus= " + loginStatus);
		 model.addAttribute("loginStatus",loginStatus);
		//request.getSession().setAttribute("loginStatus", loginStatus);
		// request.setAttribute("loginStatus",loginStatus);
		 model.addAttribute("vendorCheck", new Vendor());
		 session.setAttribute("vendor", vendor);
		return url;

	}*/

	/*// User Login Verification Method
	@RequestMapping(value = "/userLoginCheck", method = RequestMethod.POST)
	public String verifyUserLogin(@ModelAttribute("userCheck") User user, Model model, HttpServletRequest request,
			HttpServletResponse response) {
		System.err.println("Inside User Login Verification Controller");

		User dbUser = userService.findById(user.getEmailId());

		int loginStatus = 0;
		String url = null;
		if (dbUser != null) {
			if (dbUser.getPassword().equals(user.getPassword())) {

				loginStatus = 1; // successfull login
			} else {
				loginStatus = -2; // password mismatch

			}
		} else {

			loginStatus = -1; // username not found

		}

		if (loginStatus == 1) {

			url = "userPanel";
		} else {
			url = "userLogin";

		}
		System.err.println("LoginStatus= " + loginStatus);
		 model.addAttribute("loginStatus",loginStatus);
		 model.addAttribute("userCheck",new User());
		//request.getSession().setAttribute("loginStatus", loginStatus);

		return url;

		
		 * validity = userService.verifyLogin(user);
		 * System.err.println("Validity= " + validity); if (validity != null) {
		 * 
		 * return "userPanel"; }
		 * 
		 * 
		 * return "failureLogin";
		 

	}*/
	///*************************ETA AMAR BANANO****************************////////
		//Forgot password method call from Login Page
				@RequestMapping(value = "/resPas", method = RequestMethod.GET)
				public String userForgotPasswordCall(ModelMap model) {
					model.addAttribute("resetPass", new User());
					return "resPas";
			}
		// forgot password functionality Verification Method
				@RequestMapping(value = "/forgotpassword", method = RequestMethod.POST)
				public String verifyForgotPassword(@ModelAttribute("pass") User user, Model model, HttpServletRequest request,
						HttpServletResponse response) {
					System.err.println("Inside forgotpassword Verification Controller");

					User dbUser = userService.findById(user.getEmailId());

					int loginStatus = 0;
					String a="";
					String b="";
					String url = null;
					if (dbUser != null) {
						if (dbUser.getEmailId()!=null) {

							loginStatus = 1; // HINT ANSWER MATCHED 
						} else {
							loginStatus = -2; // HINT ANSWER mismatch

						}
					

					}

					if (loginStatus == 1) {
						a=dbUser.getPassword();
						b=dbUser.getEmailId();
						url = "password";
					}
					else {
						url = "resPas";

					}
					model.addAttribute("a", a);
					model.addAttribute("b", b);
					
					System.err.println("LoginStatus= " + loginStatus);
					 model.addAttribute("loginStatus",loginStatus);
					 model.addAttribute("resetPass",new User());
					//request.getSession().setAttribute("loginStatus", loginStatus);

					return url;
				}

					/*
					 * validity = userService.verifyLogin(user);
					 * System.err.println("Validity= " + validity); if (validity != null) {
					 * 
					 * return "userPanel"; }
					 * 
					 * 
					 * return "failureLogin";
					 */

				
				
				// new password functionality Verification Method
							@RequestMapping(value = "/changepassword", method = RequestMethod.POST)
							public String newPassword(@ModelAttribute("userCheck") User user, Model model, HttpServletRequest request,
									HttpServletResponse response) {
								System.err.println("Inside forgotpassword Verification Controller");
								System.out.println("_--------------------------"+user);
								User dbUser = userService.findById(user.getEmailId());

								System.out.println(dbUser+"-----------------------------------------------------------------");
								//String a="";
								String url = "userLogin";
								dbUser.setPassword(user.getPassword()); //PASSWORD CHANGING
								userService.updatePassword(dbUser);
								System.out.println("_----------========----------------"+dbUser);
								int loginStatus = 1;
								return url;


							} 
					
				///*************EI OBDI**************//////////////////////////////////////
				
	}
