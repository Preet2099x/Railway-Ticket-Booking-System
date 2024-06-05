package in.itpcst.demo;

import org.springframework.stereotype.Component;

@Component
public class Motorola implements Mobile{

	@Override
	public String getMobileService() {
		// TODO Auto-generated method stub
		return "Motorola-Mobile-Service";
	}

}
