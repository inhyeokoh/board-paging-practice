package org.example.basicpj.repository;

import org.example.basicpj.domain.Post;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PostRepository {
    void save(Post post);

    List<Post> getAllPosts();
}
