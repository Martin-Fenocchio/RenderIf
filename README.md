# RenderIf

RenderIf is a Flutter library designed to make your Flutter code cleaner and your development process faster. This library provides an extra boolean parameter, `condition`, for several common Flutter widgets. 

## Why use RenderIf?

- **Less boilerplate**: No need to clutter your code with `if` conditions. Just provide the `condition` to the RenderIf widget and let it handle the rendering.
- **Cleaner code**: Make your codebase cleaner and easier to understand with RenderIf widgets.
- **Easy to use**: RenderIf widgets follow the same structure as their corresponding Flutter widgets. It's easy to swap out Flutter widgets for RenderIf widgets.
- **Efficient**: RenderIf widgets avoid unnecessary rendering, improving performance.
  
## Widgets included

Currently, the RenderIf library includes the following widgets:
- `ExpandedIf`
- `FlexibleIf`
- `RowIf`
- `ColumnIf`
- `TextIf`
- `PaddingIf`

Each widget takes in a `condition` parameter and only renders if the condition is `true`.

## Usage

The RenderIf library is straightforward to use. Each RenderIf widget closely mirrors its corresponding Flutter widget, but includes an additional `condition` parameter. This `condition` is a boolean that determines whether the widget should render.

Here's an example of how to use a RenderIf widget:

```dart
ExpandedIf(
  condition: true,
  flex: 2,
  child: Container(
    // your code here
  ),
) 
```` 

In this case, the Expanded widget will only render if condition is true. This is equivalent to the following standard Flutter code:

```dart
if (true) {
  Expanded(
    flex: 2,
    child: Container(
      // your code here
    ),
  );
} else {
  SizedBox();
}
```` 

As you can see, using ExpandedIf significantly reduces the amount of code and makes it easier to read. This becomes especially useful when you have many widgets that need to conditionally render.

Remember, you can replace true with any boolean expression. For example, you could conditionally render a widget based on whether a user is logged in:

```dart
ExpandedIf(
  condition: user.isLoggedIn,
  flex: 2,
  child: Container(
    // your code here
  ),
)
```` 


This will only render the Expanded widget if user.isLoggedIn is true. Otherwise, it will render a SizedBox.

The same logic applies to the other widgets provided by RenderIf.