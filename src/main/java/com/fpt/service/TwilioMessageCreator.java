package com.fpt.service;

import org.springframework.stereotype.Service;

import com.twilio.Twilio;
import com.twilio.exception.TwilioException;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

@Service
public class TwilioMessageCreator {
	public static final String ACCOUNT_SID = "ACb9713248a0795d608ecf96aae8bb1eb6";
	public static final String AUTH_TOKEN = "e1f8c4afad7d5679d35a53e3ef66863e";
	public static final String TWILIO_NUMBER = "+12562578741";

	public void sendSMS(String msg, String phone) throws TwilioException {

		Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

		Message message = Message.creator(new PhoneNumber("+84" + phone.substring(1)), // to
				new PhoneNumber(TWILIO_NUMBER), // from
				msg).create();

		System.out.println(message.getSid());
	}

}
