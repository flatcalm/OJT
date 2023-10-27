// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.2

Window {
    id: window
    width: 360
    height: 480

    visible: true
    title: "calculator"

    Calculator {
        id: columnLayout
    }

}

