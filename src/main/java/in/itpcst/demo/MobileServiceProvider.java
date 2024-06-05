package in.itpcst.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service
public class MobileServiceProvider {
	@Autowired
	Motorola mObj;
	
	@Autowired
	Samsung sObj;
	
	public String askMobile(String MobileBrandName) {
		switch(MobileBrandName){
			case "Motorola":
				return mObj.getMobileService();
			case "Samsung":
				return sObj.getMobileService();
			default:
				return "NA";
		}
	}
}
