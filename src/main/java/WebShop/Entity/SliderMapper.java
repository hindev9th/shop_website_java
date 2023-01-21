package WebShop.Entity;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class SliderMapper implements RowMapper<Slider> {
    @Override
    public Slider mapRow(ResultSet resultSet, int i) throws SQLException {
        Slider slider = new Slider();
        slider.setId(resultSet.getInt("id"));
        slider.setUrl(resultSet.getString("url"));
        slider.setTitle(resultSet.getString("title"));
        slider.setContent(resultSet.getString("content"));
        slider.setImage(resultSet.getString("image"));
        slider.setPositon(resultSet.getInt("position"));
        return slider;
    }
}
