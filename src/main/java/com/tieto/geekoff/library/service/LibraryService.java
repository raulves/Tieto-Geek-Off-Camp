package com.tieto.geekoff.library.service;

import com.tieto.geekoff.library.frontend.models.Book;

import java.util.List;

public interface LibraryService {

    List<Book> getBooks();
    void bookIsNotAvailable(int id);
    void bookIsAvailable(int id);
}