--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (173, 2018, 'Final', 565, 566, 4, 2);
INSERT INTO public.games VALUES (174, 2018, 'Third Place', 567, 568, 2, 0);
INSERT INTO public.games VALUES (175, 2018, 'Semi-Final', 566, 568, 2, 1);
INSERT INTO public.games VALUES (176, 2018, 'Semi-Final', 565, 567, 1, 0);
INSERT INTO public.games VALUES (177, 2018, 'Quarter-Final', 566, 569, 3, 2);
INSERT INTO public.games VALUES (178, 2018, 'Quarter-Final', 568, 570, 2, 0);
INSERT INTO public.games VALUES (179, 2018, 'Quarter-Final', 567, 571, 2, 1);
INSERT INTO public.games VALUES (180, 2018, 'Quarter-Final', 565, 572, 2, 0);
INSERT INTO public.games VALUES (181, 2018, 'Eighth-Final', 568, 573, 2, 1);
INSERT INTO public.games VALUES (182, 2018, 'Eighth-Final', 570, 574, 1, 0);
INSERT INTO public.games VALUES (183, 2018, 'Eighth-Final', 567, 575, 3, 2);
INSERT INTO public.games VALUES (184, 2018, 'Eighth-Final', 571, 576, 2, 0);
INSERT INTO public.games VALUES (185, 2018, 'Eighth-Final', 566, 577, 2, 1);
INSERT INTO public.games VALUES (186, 2018, 'Eighth-Final', 569, 578, 2, 1);
INSERT INTO public.games VALUES (187, 2018, 'Eighth-Final', 572, 579, 2, 1);
INSERT INTO public.games VALUES (188, 2018, 'Eighth-Final', 565, 580, 4, 3);
INSERT INTO public.games VALUES (189, 2014, 'Final', 581, 580, 1, 0);
INSERT INTO public.games VALUES (190, 2014, 'Third Place', 582, 571, 3, 0);
INSERT INTO public.games VALUES (191, 2014, 'Semi-Final', 580, 582, 1, 0);
INSERT INTO public.games VALUES (192, 2014, 'Semi-Final', 581, 571, 7, 1);
INSERT INTO public.games VALUES (193, 2014, 'Quarter-Final', 582, 583, 1, 0);
INSERT INTO public.games VALUES (194, 2014, 'Quarter-Final', 580, 567, 1, 0);
INSERT INTO public.games VALUES (195, 2014, 'Quarter-Final', 571, 573, 2, 1);
INSERT INTO public.games VALUES (196, 2014, 'Quarter-Final', 581, 565, 1, 0);
INSERT INTO public.games VALUES (197, 2014, 'Eighth-Final', 571, 584, 2, 1);
INSERT INTO public.games VALUES (198, 2014, 'Eighth-Final', 573, 572, 2, 0);
INSERT INTO public.games VALUES (199, 2014, 'Eighth-Final', 565, 585, 2, 0);
INSERT INTO public.games VALUES (200, 2014, 'Eighth-Final', 581, 586, 2, 1);
INSERT INTO public.games VALUES (201, 2014, 'Eighth-Final', 582, 576, 2, 1);
INSERT INTO public.games VALUES (202, 2014, 'Eighth-Final', 583, 587, 2, 1);
INSERT INTO public.games VALUES (203, 2014, 'Eighth-Final', 580, 574, 1, 0);
INSERT INTO public.games VALUES (204, 2014, 'Eighth-Final', 567, 588, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (565, 'France');
INSERT INTO public.teams VALUES (566, 'Croatia');
INSERT INTO public.teams VALUES (567, 'Belgium');
INSERT INTO public.teams VALUES (568, 'England');
INSERT INTO public.teams VALUES (569, 'Russia');
INSERT INTO public.teams VALUES (570, 'Sweden');
INSERT INTO public.teams VALUES (571, 'Brazil');
INSERT INTO public.teams VALUES (572, 'Uruguay');
INSERT INTO public.teams VALUES (573, 'Colombia');
INSERT INTO public.teams VALUES (574, 'Switzerland');
INSERT INTO public.teams VALUES (575, 'Japan');
INSERT INTO public.teams VALUES (576, 'Mexico');
INSERT INTO public.teams VALUES (577, 'Denmark');
INSERT INTO public.teams VALUES (578, 'Spain');
INSERT INTO public.teams VALUES (579, 'Portugal');
INSERT INTO public.teams VALUES (580, 'Argentina');
INSERT INTO public.teams VALUES (581, 'Germany');
INSERT INTO public.teams VALUES (582, 'Netherlands');
INSERT INTO public.teams VALUES (583, 'Costa Rica');
INSERT INTO public.teams VALUES (584, 'Chile');
INSERT INTO public.teams VALUES (585, 'Nigeria');
INSERT INTO public.teams VALUES (586, 'Algeria');
INSERT INTO public.teams VALUES (587, 'Greece');
INSERT INTO public.teams VALUES (588, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 204, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 588, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--
