## Implementing a Label Component in SwiftUI

To implement a label component in SwiftUI, we need to follow the steps outlined below:
- Label with icon

One of the most common and recognizable user interface components is the combination of an icon and a label. To create a label with an icon in SwiftUI, we can utilize the `Label` view provided by Apple. This view takes two parameters: `title` and `icon`.

For example:
```
struct ContentView: View {
    var body: some View {
        Label {
            Text("Network")
                .bold()
                .foregroundColor(.red)
        } icon: {
            Image(systemName: "globe")
                .symbolVariant(.fill)
                .foregroundColor(.red)
        }
    }
}

```
- Label with default style

To create a label component with the default style in SwiftUI, we can use the`Label` view along with `labelStyle` property. Default style is automatic but we can use other properties `titleOnly`, `iconOnly`, `titleAndIcon`. 

For example:
```
struct ContentView: View {
    var body: some View {
        VStack {
            Label("Network", systemImage: "globe") // default style is automatic
            Label("Network", systemImage: "globe")
                .labelStyle(.titleOnly)
            Label("Network", systemImage: "globe")
                .labelStyle(.iconOnly)
            Label("Network", systemImage: "globe")
                .labelStyle(.titleAndIcon)
        }
    }       

```
- Lable with custom styling: 

You can also create a customized label style by modifying an existing style. 
```
struct GreenBorderedLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        Label(configuration)
            .border(Color.green)
    }
}
Label("Network", systemImage: "globe")
    .labelStyle(AdaptiveLabelStyle())

```
- Text 
To create a label component with the default style in SwiftUI, we can use the `Text` view along with its modifier. For example, we can define a simple label with the text "Hello, World!"

```
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}
```
