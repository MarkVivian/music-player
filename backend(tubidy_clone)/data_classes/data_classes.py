from dataclasses import dataclass


@dataclass
class SongDetails:
    artist_name: str
    song_name: str
    song_length: str
    genre: str
    lyrics: str
