package com.entertainment.show.time.controller;

import com.entertainment.show.time.dto.MovieDto;
import com.entertainment.show.time.feign.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

//@RestController
@Controller
@RequestMapping("/api/show-time")
public class ShowTimeController {

    @Autowired
    private MovieService movieService;

    // Home Page
    @GetMapping("/movies-home")
    public String showHomePage() {
        return "movie-home";
    }

    /*@GetMapping("/show-movies")
    public List<MovieDto> getMovies() {
        return movieService.getAllMovies();
    }*/


    @GetMapping("/show-movies")
    public String showMovies(Model model) {

        model.addAttribute("movies", movieService.getAllMovies());

        return "movie-list";
    }

    @GetMapping("/show-movie/{id}")
    @ResponseBody
    public MovieDto getMovieById(@PathVariable("id") int movieId) {
        return movieService.getMovieById(movieId);
    }

    @PostMapping("/save-movie")
    @ResponseBody
    public MovieDto saveMovie(@RequestBody MovieDto movieDto) {
        return movieService.saveMovie(movieDto);
    }

}
