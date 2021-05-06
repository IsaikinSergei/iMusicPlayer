//
//  CMTime + Extension.swift
//  iMusicPlayer
//
//  Created by Sergei Isaikin on 07.05.2021.
//

import Foundation
import AVKit


// MARK: - через extension устанавливаем время проигрывания трэка и приводим формат этого времени к String для отображения в Label

extension CMTime {
    
    func toDisplayString() -> String {
        guard !CMTimeGetSeconds(self).isNaN else { return ""}
        let totalSeconds = Int(CMTimeGetSeconds(self))
        let seconds = totalSeconds % 60
        let minutes = totalSeconds / 60
        let timeFormatString = String(format: "%02d:%02d", minutes, seconds)
        return timeFormatString
    }
}
