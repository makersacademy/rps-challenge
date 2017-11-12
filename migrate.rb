# Fixes complains such as:
# .rubocop.yml: Style/IndentationConsistency has the wrong namespace - should be Layout
# .rubocop.yml: Style/IndentationWidth has the wrong namespace - should be Layout
# .rubocop.yml: Style/DotPosition has the wrong namespace - should be Layout

layouts = %w[
  AccessModifierIndentation
  AlignArray
  AlignHash
  AlignParameters
  ClosingParenthesisIndentation
  CommentIndentation
  DotPosition
  EmptyLineBetweenDefs
  EmptyLinesAroundBlockBody
  EmptyLinesAroundClassBody
  EmptyLinesAroundModuleBody
  ExtraSpacing
  FirstParameterIndentation
  IndentArray
  IndentationConsistency
  IndentationWidth
  IndentHash
  LeadingCommentSpace
  MultilineMethodCallIndentation
  MultilineOperationIndentation
  SpaceAfterComma
  SpaceAroundEqualsInParameterDefault
  SpaceAroundOperators
  SpaceBeforeBlockBraces
  SpaceBeforeComma
  SpaceInsideBlockBraces
  SpaceInsideBrackets
  SpaceInsideHashLiteralBraces
  SpaceInsideParens
  SpaceInsideStringInterpolation
  TrailingBlankLines
]

path = '.rubocop.yml'

legacy_content = File.read(path)
new_content = legacy_content.gsub(/Style\/(#{ layouts.join('|') })/, 'Layout/\1')
File.write(path, new_content)
