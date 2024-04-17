function Bar(monitor = 0) {
  const myLabel = Widget.Label({
    label: 'example label',
  })

  return Widget.Window({
    monitor,
    name: `bar${monitor}`, // must be a unique name
    anchor: ['top', 'left', 'right'],
    child: myLabel,
  })
}

App.config({
  windows: [
    // window definitions go here.
    Bar(0), // 0 tells which monitor the bar is on.
  ] 
})
