package com.entertainment.show.time.feign;

import com.entertainment.show.time.dto.MovieDto;
import com.entertainment.show.time.encoder.CustomMovieServiceCilentEncoder;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;

@FeignClient(
        name = "movie-service",
        url = "${feign.client.movie.service.url}",
        configuration = CustomMovieServiceCilentEncoder.class
)
public interface MovieService {

    @GetMapping("/movie-list")
    List<MovieDto> getAllMovies();

    @GetMapping("/movie/{id}")
    public MovieDto getMovieById(@PathVariable("id") int id);

    @PostMapping("/save-movie")
    public MovieDto saveMovie(@RequestBody MovieDto movieDto);
}
