package WebShop.Dao;

import WebShop.Entity.SliderMapper;
import WebShop.Entity.Slider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class SliderDao {
    @Autowired

    protected JdbcTemplate jdbcTemplate;
    public List<Slider> getDataSliders(){
        List<Slider> list = new ArrayList<Slider>();
        String sql = "SELECT * from slider";
        list = this.jdbcTemplate.query(sql,new SliderMapper());
        return list;
    }
}
