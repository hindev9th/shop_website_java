package WebShop.Entity;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ReviewMapper implements RowMapper<Review> {
    @Override
    public Review mapRow(ResultSet resultSet, int i) throws SQLException {
        Review review = new Review();
        review.setId(resultSet.getInt("id"));
        review.setCode(resultSet.getString("code"));
        review.setName(resultSet.getString("name"));
        review.setImage(resultSet.getString("image"));
        review.setRate(resultSet.getInt("rate"));
        review.setContent(resultSet.getString("content"));
        review.setCreateAt(resultSet.getString("createAt"));
        return review;
    }
}
