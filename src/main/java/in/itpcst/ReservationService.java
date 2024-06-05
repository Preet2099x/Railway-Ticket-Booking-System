package in.itpcst;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReservationService {
	@Autowired  
	ReservationRepository resRepository;
	
	//saving a specific record by using the method save() of CrudRepository  
		public void saveOrUpdate(Reservation resObj)   
		{  
			resRepository.save(resObj);  
		}
		
		public List<Reservation> getAllBookings()   
		{  
			List<Reservation> bookings = new ArrayList<Reservation>();  
			resRepository.findAll().forEach(books1 -> bookings.add(books1));  
			return bookings;  
		} 
		
		public Reservation getBooksById(String id)   
		{  
			long resid=Long.parseLong(id);
			return resRepository.findById(resid).get();  
		}
		
		public void delete(long id)   
		{  
			resRepository.deleteById(id);  
		}
}
