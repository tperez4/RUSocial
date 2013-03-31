package ca.ryerson.scs.rus.util;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import ca.ryerson.scs.rus.R;
import ca.ryerson.scs.rus.messenger.objects.Message;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Base64;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public class MessageListAdapter extends ArrayAdapter<Message> {

	private LayoutInflater inflater;
	ArrayList<Message> messages = new ArrayList<Message>();
	Context context;
	
	public MessageListAdapter(Context context, int textViewResourceId,
			ArrayList<Message> message) {
		super(context, textViewResourceId, message);
		this.messages = messages;
		this.inflater = LayoutInflater.from(context);
		this.context = context;
		// TODO Auto-generated constructor stub
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		Message message = getItem(position); //auto loops and knows how many msgs in arraylist
		View v = convertView;
		
		// TODO: uncomment when layout is done
		
		if (convertView==null){
			convertView =  inflater.inflate(R.layout.listview_msgs, null);
		}
		
		TextView username = (TextView) convertView.findViewById(R.id.MsgTVUser);
		username.setText(message.getUsername());
		
		TextView msg = (TextView) convertView.findViewById(R.id.MsgTVMsg);
		msg.setText(message.getMessage());
		
		TextView msgDate = (TextView) convertView.findViewById(R.id.MsgTVDate);
		SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
		String stringDate = formatter.format(message.getDate());
		msgDate.setText(stringDate); 
		
		/*
		ImageView avatar = (ImageView) convertView.findViewById(R.id.MsgIVAvatar);
		byte[] decodedString = Base64.decode(message.getPicture(), Base64.DEFAULT);
		Bitmap decodedByte = BitmapFactory.decodeByteArray(decodedString, 0, decodedString.length); 
		avatar.setImageBitmap(decodedByte);
		*/

		return convertView;
	}

}
