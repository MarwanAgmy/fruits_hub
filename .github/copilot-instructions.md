# Project Architectural & Coding Guidelines

## Core Principles
1. **Strict Scope**: Modify ONLY the exact lines, files, or widgets requested. Do NOT refactor existing working code, restructure methods, or change formatting elsewhere unless explicitly asked.
2. **Architecture**: Follow Clean Architecture (`lib/core/` for shared components/constants, `lib/features/<feature_name>/presentation/` for UI logic/widgets).
3. **Coding Style**:
   - Prefer `StatelessWidget` when state management isn't required locally.
   - Use design system constants (e.g., `kHorizontalPadding`, `kPrimaryColor`) from `lib/constant.dart` or `lib/core/` rather than hardcoding values.
   - Follow existing naming conventions (`<name>_view.dart`, `<name>_view_body.dart`, `<name>_widget.dart`).
   - Retain trailing commas for multi-line Flutter trees.