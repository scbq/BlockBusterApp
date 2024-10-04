require "test_helper"

class PeliculasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pelicula = peliculas(:one)
  end

  test "should get index" do
    get peliculas_url
    assert_response :success
  end

  test "should get new" do
    get new_pelicula_url
    assert_response :success
  end

  test "should create pelicula" do
    assert_difference("Pelicula.count") do
      post peliculas_url, params: { pelicula: { cliente_id: @pelicula.cliente_id, genre: @pelicula.genre, title: @pelicula.title, year: @pelicula.year } }
    end

    assert_redirected_to pelicula_url(Pelicula.last)
  end

  test "should show pelicula" do
    get pelicula_url(@pelicula)
    assert_response :success
  end

  test "should get edit" do
    get edit_pelicula_url(@pelicula)
    assert_response :success
  end

  test "should update pelicula" do
    patch pelicula_url(@pelicula), params: { pelicula: { cliente_id: @pelicula.cliente_id, genre: @pelicula.genre, title: @pelicula.title, year: @pelicula.year } }
    assert_redirected_to pelicula_url(@pelicula)
  end

  test "should destroy pelicula" do
    assert_difference("Pelicula.count", -1) do
      delete pelicula_url(@pelicula)
    end

    assert_redirected_to peliculas_url
  end
end
