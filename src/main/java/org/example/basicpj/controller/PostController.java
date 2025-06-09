package org.example.basicpj.controller;

import org.example.basicpj.domain.Post;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.example.basicpj.service.PostService;

import java.util.List;

@Controller
@RequiredArgsConstructor
public class PostController {
    private final PostService postService;

    @GetMapping("/board")
    public String boardPage(Model model,
                            @RequestParam(defaultValue = "1") int page,
                            @RequestParam(defaultValue = "10") int size) {
        List<Post> posts = postService.getPostsByPage(page, size);
        int totalCount = postService.getPostCount();

        int totalPages = (int) Math.ceil((double) totalCount / size);

        model.addAttribute("posts", posts);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", totalPages);

        return "board";
    }

    @GetMapping("/board/write")
    public String writeForm(){
        return "newPost";
    }

    @PostMapping("/board/write")
    public String submitPost(@RequestParam String title,
                            @RequestParam String content,
                            @RequestParam String writer
    ){
        Post post = Post.builder()
                .title(title)
                .content(content)
                .writer(writer)
                .build();
        postService.save(post);
        return "redirect:/board";
    }
}
