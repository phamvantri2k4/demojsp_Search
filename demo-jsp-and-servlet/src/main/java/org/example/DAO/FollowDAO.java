package main.java.org.example.DAO;

import main.java.org.example.model.User;

import java.util.List;

public interface FollowDAO {
    void follow(User follower, User following);

    void unfollow(User follower, User following);

    List findFollowing(User user);

    List findFollowers(User user);

    List findUsersByFollowCriteria(int minFollowing, int minFollowers);
}