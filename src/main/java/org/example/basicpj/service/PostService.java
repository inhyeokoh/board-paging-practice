package org.example.basicpj.service;

import org.example.basicpj.domain.Post;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.example.basicpj.repository.PostRepository;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class PostService {
    private final PostRepository postRepository;

    public void save(Post post){
        postRepository.save(post);
    }

    public List<Post> getPostsByPage(int page, int size) {
        int offset = (page - 1) * size;
        return postRepository.getPostsByPage(size, offset);
    }

    public int getPostCount() {
        return postRepository.getPostCount();
    }
}
