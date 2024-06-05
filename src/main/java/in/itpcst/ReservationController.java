package in.itpcst;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;  

@Controller
public class ReservationController {
	
	@Autowired
	ReservationService resObj;
	
	@GetMapping("/ReservationHome")  
	private String getBMS_Menu()   
	{  
		System.out.println("Inside ReservationHome");
		return "ReservationHome";  
	}
	
	@GetMapping("/blogHome")  
	private String blogHome()   
	{  
		System.out.println("Inside ReservationHome");
		return "blog";  
	}
	
	@GetMapping("/bookingForm")  
	public String bookingForm(Model model)  
	{  
	      //create a reservation object   
	    Reservation res=new Reservation();  
	      //provide reservation object to the model   
	    model.addAttribute("reservation", res);  
	    return "reservation-page";  
	}  
	
	@PostMapping("/saveReservationDetails")  
	// @ModelAttribute binds form data to the object  
	public String submitForm(@ModelAttribute("reservation") Reservation res)  
	{  
		//System.out.println(res.getFirstName());
		//System.out.println(res.getLastName());

		resObj.saveOrUpdate(res);
	    return "confirmation-form";  
	}  
	
	@GetMapping("/viewAllBookings")  
	private ModelAndView viewAllBookings(HttpServletRequest req)   
	{  
		System.out.println("Inside viewAllBookings");
		List<Reservation> lObj = resObj.getAllBookings();
		ModelAndView mv=new ModelAndView();
		mv.addObject("bookingsData", lObj);
		mv.setViewName("viewAllBookings-page");
		return   mv;
	} 	
	
	@GetMapping("/booking/{username}")
    public ModelAndView bookingById(@PathVariable String username) {
		System.out.println("username     "+username);
		
		List<Reservation> lObj = new ArrayList<Reservation>();
		try {
			lObj.add(resObj.getBooksById(username));
		}catch(Exception e) {}
		
		
		ModelAndView mv=new ModelAndView();
		if(lObj.size()>0) {
			mv.addObject("bookingsData", lObj);
		}		
		mv.setViewName("viewAllBookings-page");
		return   mv;
		
    }
	
	@GetMapping("/deleteBooking/{username}")
    public ModelAndView deleteBooking(@PathVariable String username) {
		System.out.println("username     "+username);
		
		try {
			resObj.delete(Integer.parseInt(username));  
		}catch(Exception e) {}
		
		ModelAndView mv=new ModelAndView();
		mv.addObject("msg","Booking Deleted Successfully - "+username);
		mv.setViewName("ReservationHome");
		return   mv;
		
    }
	
	@GetMapping("/editBooking/{username}")
    public ModelAndView editBooking(@PathVariable String username,Model model,@ModelAttribute("reservation") Reservation res) {
		System.out.println("username     "+username);
		res=resObj.getBooksById(username);
		model.addAttribute("reservation", res);  
		
		ModelAndView mv=new ModelAndView();
		//mv.addObject("msg","Booking Deleted Successfully - "+username);
		mv.setViewName("edit-reservation-page");
		return   mv;
		
    }
	
	@PostMapping("/updateBooking")
    public ModelAndView updateBooking(@ModelAttribute("reservation") Reservation res) {
		System.out.println("res.getId()   "+res.getId());
		ModelAndView mv=new ModelAndView();
		resObj.saveOrUpdate(res);
		mv.addObject("msg","Booking Updated Successfully - "+res.getId());
		mv.setViewName("confirmation-form");
		return   mv;
    }
	
	
}
