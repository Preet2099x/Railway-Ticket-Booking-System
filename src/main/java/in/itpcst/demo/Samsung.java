package in.itpcst.demo;

import org.springframework.stereotype.Component;

@Component
public class Samsung implements Mobile{
	@Override
	public String getMobileService() {
		return "Samsung-Mobile-Service";
	}
}
