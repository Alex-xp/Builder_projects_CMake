#include <SFML/Window.hpp>

int main(int argc, char **argv){
    
    // создаем окно
    sf::Window window;
    window.create(sf::VideoMode(800, 600), L"Это моё окно");

    while (window.isOpen())
    {
        // получаем события окна в каждой итерации цикла
        sf::Event event;
        while (window.pollEvent(event))
        {
            // обрабатываем событие закрывания окна
            if (event.type == sf::Event::Closed)
                window.close();
        }
    }

    return 0;
}
