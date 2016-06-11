#!/usr/bin/env swift

import AppKit

let alert: NSAlert = NSAlert()
alert.messageText = "Do you like cooking?"
alert.addButtonWithTitle("Yes")
alert.addButtonWithTitle("No")
alert.alertStyle = NSAlertStyle.WarningAlertStyle
let response: Int = alert.runModal()
switch response {
  case NSAlertFirstButtonReturn:
    print("Yes")
  case NSAlertSecondButtonReturn:
    print("No")
  default:
    break
}
