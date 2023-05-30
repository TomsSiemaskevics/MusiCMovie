//
//  Song.swift
//  TableList
//
//  Created by toms.siemaskevics on 17/04/2023.
//

import Foundation


struct Song {
#warning("movie dumy data logic")
    let track: String
    let album: String
    let cover: String
    
    static func creatSong() -> [Song] {
        
        var songs: [Song] = []
        
        let tracks = DataManager.shared.track
        let albums = DataManager.shared.album
        let covers = DataManager.shared.cover
        
        for i in 0..<tracks.count {
            let song = Song(track: tracks[i], album: albums[i], cover: covers[i])
            songs.append(song)
        }

        return songs
    }
    
}