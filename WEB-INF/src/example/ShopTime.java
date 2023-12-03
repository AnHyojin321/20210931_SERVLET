package example;
import java.util.Calendar;

public class ShopTime {
    public String timenow() {
        Calendar calendar = Calendar.getInstance();
        int hour = calendar.get(Calendar.HOUR_OF_DAY); // 24시간 형식
        int minute = calendar.get(Calendar.MINUTE);
        int second = calendar.get(Calendar.SECOND);

        String am_pm = (hour < 12) ? "오전" : "오후";
        hour = (hour % 12 == 0) ? 12 : hour % 12; // 12시간 형식으로 변경

        String CT = hour + ":" + minute + ":" + second + " " + am_pm;
        return CT;
    }
}
