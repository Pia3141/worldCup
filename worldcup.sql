--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

INSERT INTO public.games VALUES (205, 2018, 'Final', 589, 590, 4, 2);
INSERT INTO public.games VALUES (206, 2018, 'Third Place', 591, 592, 2, 0);
INSERT INTO public.games VALUES (207, 2018, 'Semi-Final', 590, 592, 2, 1);
INSERT INTO public.games VALUES (208, 2018, 'Semi-Final', 589, 591, 1, 0);
INSERT INTO public.games VALUES (209, 2018, 'Quarter-Final', 590, 593, 3, 2);
INSERT INTO public.games VALUES (210, 2018, 'Quarter-Final', 592, 594, 2, 0);
INSERT INTO public.games VALUES (211, 2018, 'Quarter-Final', 591, 595, 2, 1);
INSERT INTO public.games VALUES (212, 2018, 'Quarter-Final', 589, 596, 2, 0);
INSERT INTO public.games VALUES (213, 2018, 'Eighth-Final', 592, 597, 2, 1);
INSERT INTO public.games VALUES (214, 2018, 'Eighth-Final', 594, 598, 1, 0);
INSERT INTO public.games VALUES (215, 2018, 'Eighth-Final', 591, 599, 3, 2);
INSERT INTO public.games VALUES (216, 2018, 'Eighth-Final', 595, 600, 2, 0);
INSERT INTO public.games VALUES (217, 2018, 'Eighth-Final', 590, 601, 2, 1);
INSERT INTO public.games VALUES (218, 2018, 'Eighth-Final', 593, 602, 2, 1);
INSERT INTO public.games VALUES (219, 2018, 'Eighth-Final', 596, 603, 2, 1);
INSERT INTO public.games VALUES (220, 2018, 'Eighth-Final', 589, 604, 4, 3);
INSERT INTO public.games VALUES (221, 2014, 'Final', 605, 604, 1, 0);
INSERT INTO public.games VALUES (222, 2014, 'Third Place', 606, 595, 3, 0);
INSERT INTO public.games VALUES (223, 2014, 'Semi-Final', 604, 606, 1, 0);
INSERT INTO public.games VALUES (224, 2014, 'Semi-Final', 605, 595, 7, 1);
INSERT INTO public.games VALUES (225, 2014, 'Quarter-Final', 606, 607, 1, 0);
INSERT INTO public.games VALUES (226, 2014, 'Quarter-Final', 604, 591, 1, 0);
INSERT INTO public.games VALUES (227, 2014, 'Quarter-Final', 595, 597, 2, 1);
INSERT INTO public.games VALUES (228, 2014, 'Quarter-Final', 605, 589, 1, 0);
INSERT INTO public.games VALUES (229, 2014, 'Eighth-Final', 595, 608, 2, 1);
INSERT INTO public.games VALUES (230, 2014, 'Eighth-Final', 597, 596, 2, 0);
INSERT INTO public.games VALUES (231, 2014, 'Eighth-Final', 589, 609, 2, 0);
INSERT INTO public.games VALUES (232, 2014, 'Eighth-Final', 605, 610, 2, 1);
INSERT INTO public.games VALUES (233, 2014, 'Eighth-Final', 606, 600, 2, 1);
INSERT INTO public.games VALUES (234, 2014, 'Eighth-Final', 607, 611, 2, 1);
INSERT INTO public.games VALUES (235, 2014, 'Eighth-Final', 604, 598, 1, 0);
INSERT INTO public.games VALUES (236, 2014, 'Eighth-Final', 591, 612, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (589, 'France');
INSERT INTO public.teams VALUES (590, 'Croatia');
INSERT INTO public.teams VALUES (591, 'Belgium');
INSERT INTO public.teams VALUES (592, 'England');
INSERT INTO public.teams VALUES (593, 'Russia');
INSERT INTO public.teams VALUES (594, 'Sweden');
INSERT INTO public.teams VALUES (595, 'Brazil');
INSERT INTO public.teams VALUES (596, 'Uruguay');
INSERT INTO public.teams VALUES (597, 'Colombia');
INSERT INTO public.teams VALUES (598, 'Switzerland');
INSERT INTO public.teams VALUES (599, 'Japan');
INSERT INTO public.teams VALUES (600, 'Mexico');
INSERT INTO public.teams VALUES (601, 'Denmark');
INSERT INTO public.teams VALUES (602, 'Spain');
INSERT INTO public.teams VALUES (603, 'Portugal');
INSERT INTO public.teams VALUES (604, 'Argentina');
INSERT INTO public.teams VALUES (605, 'Germany');
INSERT INTO public.teams VALUES (606, 'Netherlands');
INSERT INTO public.teams VALUES (607, 'Costa Rica');
INSERT INTO public.teams VALUES (608, 'Chile');
INSERT INTO public.teams VALUES (609, 'Nigeria');
INSERT INTO public.teams VALUES (610, 'Algeria');
INSERT INTO public.teams VALUES (611, 'Greece');
INSERT INTO public.teams VALUES (612, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 236, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 612, true);


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

