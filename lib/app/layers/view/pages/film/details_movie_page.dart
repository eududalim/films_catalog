import '../../../controllers/controller_categories.dart';
import '../../../model/film_model.dart';

import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

import 'elements/back_button_custom.dart';
import 'elements/box_line_grey.dart';
import 'elements/data_duration.dart';
import 'elements/genres_widget.dart';
import 'elements/overview_text_widget.dart';
import 'elements/poster_movie.dart';
import 'elements/title_text_widget.dart';
import 'elements/titles_film.dart';
import 'elements/vote_avorage.dart';

class DetailsMoviePage extends StatelessWidget {
  const DetailsMoviePage({Key? key, required this.id}) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<ControllerFilms>();

    return FutureBuilder<FilmModel>(
        future: _controller.getDetailsFilm(id),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final film = snapshot.data!;
            final _duration = _controller.minutesToHours(film.runtime!);

            return SafeArea(
                child: Scaffold(
              body: SingleChildScrollView(
                child: Stack(children: [
                  Container(
                    height: 300,
                    color: const Color(0xFFF5F5F5),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 48),
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.topLeft,
                          child: BackButtonCustom(),
                        ),
                        const SizedBox(height: 52),
                        PosterMovie(film: film),
                        const SizedBox(height: 32),
                        VoteAverage(vote: film.voteAvorage),
                        const SizedBox(height: 32),
                        TitlesFilm(film: film),
                        const SizedBox(height: 32),
                        DataDuration(film: film, duration: _duration),
                        const SizedBox(height: 12),
                        GenresWidget(film: film),
                        const SizedBox(height: 56),
                        OverviewTextWidget(film: film),
                        const SizedBox(height: 40),
                        BoxLineGrey(
                            text1: 'Orçamento: ',
                            text2: '\$ ' +
                                (film.budget != 0
                                    ? film.budget.toString()
                                    : 'Não informado')),
                        const SizedBox(height: 4),
                        BoxLineGrey(
                            text1: 'Produtoras: ',
                            text2: film.productioCompanies?[0].toString()),
                        const SizedBox(height: 40),
                        Row(
                          children: [
                            TitleTextWidget(
                                title: 'Diretor',
                                textList: film.creditsMovieModel?.director),
                          ],
                        ),
                        const SizedBox(height: 40),
                        Row(
                          children: [
                            TitleTextWidget(
                                title: 'Elenco',
                                textList: film.creditsMovieModel?.crew),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ));
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
