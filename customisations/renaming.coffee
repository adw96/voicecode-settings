Settings.modifiers =
  modifierPrefixes:
    'shoff': 'command shift'
    'triff': 'control shift'

Commands.changeSpoken 'symbols:exclamation', 'clamour'

renames =
  'loco': 'symbols:at'
  'pounder': 'symbols:hashtag'
  'percy': 'symbols:percent'
  'lexi': 'selection:way-left'
  'treble': 'repetition:command'
  'rabble': 'repetition:command'
  'rebel': 'repetition:command'
  'triple': 'repetition:command'
  'carat': 'symbols:caret'
_.each renames, (value, key) ->
  Package.command "renamed-#{key}",
    spoken: key
    enabled: true
    action: ->
      @do value


