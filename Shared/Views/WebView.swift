//
//  WebView.swift
//  NewsfeedUI
//
//  Created by Kail Hayes on 3/12/24.
//

import SafariServices
import SwiftUI

/// SwiftUI wrapper for SFSafariViewController
struct WebView: UIViewControllerRepresentable {
    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<WebView>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<WebView>) {
    }
}
