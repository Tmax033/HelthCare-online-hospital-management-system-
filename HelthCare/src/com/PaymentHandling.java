package com;

import model.Payment;
//For REST Service
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
//For JSON
import com.google.gson.*;
//For XML
import org.jsoup.*;
import org.jsoup.parser.*;
import org.jsoup.nodes.Document;

@Path("/payment")
public class PaymentHandling {
	Payment PaymentObj = new Payment();

	@GET
	@Path("/")
	@Produces(MediaType.TEXT_HTML)
	public String readPayment() {
		return PaymentObj.readPayment();
	}

	@POST
	@Path("/")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.TEXT_PLAIN)
	public String insertPayments(
			@FormParam("PayDate") String PayDate, 
			@FormParam("CustomerName") String CustomerName,
			@FormParam("Amount") String Amount, 
			@FormParam("Description") String Description) {
		String output = PaymentObj.insertPayments(PayDate, CustomerName, Amount, Description);
		return output;
	}

	@PUT
	@Path("/")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.TEXT_PLAIN)
	public String updatePayments(String itemData) {
		
		// Convert the input string to a JSON object
		JsonObject itemObject = new JsonParser().parse(itemData).getAsJsonObject();
		
		// Read the values from the JSON object
		String PaymentID = itemObject.get("PaymentID").getAsString();
		String PayDate = itemObject.get("PayDate").getAsString();
		String CustomerName = itemObject.get("CustomerName").getAsString();
		String Amount = itemObject.get("Amount").getAsString();
		String Description = itemObject.get("Description").getAsString();
		
		String output = PaymentObj.updatePayments(PaymentID, PayDate, CustomerName, Amount, Description);
		return output;
	}
	
	@DELETE
	@Path("/")
	@Consumes(MediaType.APPLICATION_XML)
	@Produces(MediaType.TEXT_PLAIN)
	public String deletePayments(String itemData)
	{
	//Convert the input string to an XML document
	 Document doc = Jsoup.parse(itemData, "", Parser.xmlParser());

	//Read the value from the element <itemID>
	 String PaymentID = doc.select("PaymentID").text();
	 String output = PaymentObj.deletePayments(PaymentID);
	return output;
	}

}
