//
// Copyright (C) 2024 Acoustic, L.P. All rights reserved.
//
// NOTICE: This file contains material that is confidential and proprietary to
// Acoustic, L.P. and/or other developers. No license is granted under any intellectual or
// industrial property rights of Acoustic, L.P. except as may be provided in an agreement with
// Acoustic, L.P. Any unauthorized copying or distribution of content from this file is
// prohibited.
//
//  SignalView.swift
//  SwiftUIMindBlowing
//
//  Created by ohernandezltkmac on 12/13/24.
//

import SwiftUI

struct SignalView: View {

    var body: some View {
        ExampleView(
            title: "SignalView",
            demoContentView: SignalDemoView(),
            remoteSourcePath: "Basic/ViewsAndControls/Signal/SignalDemoView.swift"
        )
    }
}

struct SignalView_Previews: PreviewProvider {
    static var previews: some View {
        SignalView()
    }
}
