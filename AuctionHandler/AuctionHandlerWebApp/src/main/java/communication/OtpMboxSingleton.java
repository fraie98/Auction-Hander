package communication;

import com.ericsson.otp.erlang.OtpMbox;
import com.ericsson.otp.erlang.OtpNode;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.InetAddress;

public class OtpMboxSingleton {
    private static final String cookie = "abcde";
    private static OtpNode otpNode = null;
    private OtpMbox otpMbox;

    private OtpMboxSingleton(String id) throws IOException{
        otpMbox = otpNode.createMbox(id);
        System.out.println("OtpMBOX name: " + otpMbox.getName() + ", otpMBOX pid" + otpMbox.self().toString());
    }

    public static OtpMbox getInstance(HttpSession session) {
        if(otpNode == null){
            try {
                //TODO: find an appropriate name for the "client" Erlang node
                String nodeName = InetAddress.getLocalHost().getHostName();
                otpNode = new OtpNode(nodeName + "@localhost", cookie);
            } catch(Exception e){
                e.printStackTrace();
            }
        }

        OtpMboxSingleton ret = (OtpMboxSingleton) session.getAttribute("otpmbox");

        if (ret == null) {
            try {
                ret = new OtpMboxSingleton(session.getId());
                session.setAttribute("otpmbox", ret);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        return ret.otpMbox;
    }
}
