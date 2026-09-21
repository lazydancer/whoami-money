# whoami

**Your money, in a file you own.** whoami is a personal finance tracker that
runs entirely in your browser at [whoami.money](https://whoami.money). Your
ledger is a plain CSV on your device; nothing leaves it unless you turn sync
on, and even then the server only ever sees ciphertext.

This repository is where you report a problem or suggest an idea. The app's
source is kept private; the issues are public so you can see what has been
reported and what has been fixed.

## What it is

- **A ledger, not an app with a database.** Every transaction is one line
  moving money from one account to another, the way a bookkeeper would write
  it, in a spreadsheet-like grid you can click, drag, fill down and paste
  into. Categories are account paths like `Expenses:Food:Groceries`, so
  sorting and hierarchy are the same act.
- **Offline first.** The journal lives in your browser and round-trips
  through a CSV you can open in any spreadsheet. Install it as an app and it
  works with no connection at all.
- **Bank statements in, categorised.** Drop a CSV, OFX or QFX from your bank,
  or paste rows from a spreadsheet. The app works out which account the
  statement is for, matches rows you already have, files payees the way you
  filed them last time, and leaves the rest for you to review.
- **Reports that read a period.** Balance sheet over time, income against
  spending, envelope budgeting with a class for the one-offs that break every
  budget, a portfolio view for what your investments actually returned, and a
  forecast that borrows the rate your ledger measured.
- **A review panel, not a nag.** Duplicates, unusual amounts, lapsed bills,
  payees spelled two ways and rows filed oddly are listed beside the ledger,
  each with its fix, and you can set a judgement call aside for good.
- **Private sync, if you want it.** Turn on an account and your journal is
  encrypted on your device with a key only you hold, then synced to a server
  that stores ciphertext and nothing it could read. There is no password to
  reset because there is no password. Share a journal with a partner by code.
- **An assistant that stays home.** Categorisation help and review judgement
  can run against a model on your own machine. Nothing about your finances
  goes to a hosted model unless you choose one.

## Report a problem

**Never paste financial data.** No journal CSV, no bank statement, no account
key, no share code, no screenshot with real numbers in it. Almost anything can
be reproduced with the app's built-in sample journal ("Look around first" on
the start screen) or with a few invented rows.

Have three things ready: the app version (Journal → Guide, at the bottom),
your browser and its version, and the exact steps you took. Check the open
issues first and add to an existing one rather than opening a twin.

Pick a form:

- **Bug** — something the app did that it should not have.
- **Import problem** — a bank file or paste the app read wrongly or refused.
  Say which bank and which format; describe the file's shape with invented
  rows, never the file itself.
- **Idea** — something the app does not do and you think it should. The
  situation you were in is more useful than the feature you imagine.

Security problems go by email, not here — see [SECURITY.md](SECURITY.md).

## What happens next

Reports are read by one person, in order. A confirmed bug gets the `bug`
label and a note when the fix ships; an idea gets an honest reply about
whether it fits. The measure for every change is the same: a personal ledger
is yours, it stays on your device, and the app must earn any exception.
