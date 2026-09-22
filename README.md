<p align="center">
  <a href="https://whoami.money"><img src="docs/balance.png" alt="whoami.money — what you own and owe, month by month, with the net line over it and the accounts beneath"></a>
</p>

<h1 align="center">whoami.money</h1>

<p align="center">
  <strong>private personal plain-text finance app</strong><br>
  Budget and track your money in one CSV file you own.<br>
  No bank login. No account required. Encrypted sync if you want it.
</p>

<p align="center">
  <a href="https://whoami.money"><strong>Open the app</strong></a>
  &nbsp;·&nbsp;
  <a href="https://github.com/lazydancer/whoami-money/issues/new/choose">Report a problem</a>
  &nbsp;·&nbsp;
  <a href="SECURITY.md">Security</a>
</p>

---

Your ledger is a plain CSV on your device. Nothing leaves it unless you turn
sync on, and even then the server only ever sees ciphertext. It never connects
to your bank.

If you have been looking for a private budgeting app with no bank login — a
Mint or YNAB alternative with nothing to sign up for and no account aggregator
in the middle — this is one. If you just want a CSV finance tracker you can
open in a spreadsheet, it is that too.

This repository is where you report problems and ideas. The app's source is
private; the issues are public, so you can see what has been reported and what
has been fixed.

## What it does

### A ledger, not an app with a database

Every transaction is one line moving money from one account to another, the
way a bookkeeper would write it. You type it in a grid: click a cell, drag a
range, fill down, paste. Categories are account paths — `Expenses:Food:Groceries`
— so sorting and hierarchy are the same act, and the whole thing round-trips
through a CSV you can open in any spreadsheet.

<p align="center">
  <a href="https://whoami.money"><img src="docs/ledger.png" alt="The ledger: a grid of transactions with the accounts nav beside it"></a>
</p>

### Getting your transactions in

Four ways, and not one of them wants your online banking password. Open a CSV
you already have. Import a statement from a bank or a card. Paste rows from a
spreadsheet. Or type them.

A statement can be CSV, OFX or QFX. The importer reads the file's own columns
whatever shape they are in — a headerless export, decimal commas, a letterhead
above the table, dates with no year in them. It works out which of your
accounts the statement belongs to, and matches rows you already have instead of
duplicating them. Categories come from your own past filings, and payees are
restyled to the spelling you already use.

<p align="center">
  <a href="https://whoami.money"><img src="docs/import.png" alt="The import sheet: a bank CSV read into rows, payees restyled from block capitals, with the account it belongs to named"></a>
</p>

### Reports that read a period

| Page          | What it answers                                                             |
| ------------- | --------------------------------------------------------------------------- |
| **Overview**  | Income against spending, and the saving rate on its own axis                |
| **Balance**   | What you own and owe, month by month, with the net line on top              |
| **Budget**    | Envelopes, with a class for the one-offs that break every budget            |
| **Portfolio** | What your investments actually returned, from the revaluations you recorded |
| **Future**    | A forecast that borrows the rate your own ledger measured                   |

Every table in the app is the same grid as the ledger: click a cell, drag a
range, copy it out. Click a bar or an account name and the page filters to
it.

<p align="center">
  <a href="https://whoami.money"><img src="docs/overview.png" alt="Overview: income against expenses by month, with the period table beneath"></a>
</p>

### Review, before a number is wrong

A panel beside the ledger reads the whole journal and tells you what looks
off: a row entered twice, a row still uncategorised, an amount unlike every
other one that payee has charged, a bill that has quietly stopped arriving, a
holding nobody has valued in months. Click a finding and you land on the rows
it is about.

### Private sync, if you want it

The app is complete without an account. Sync is for two things: the same
journal on your phone and your laptop, and a journal shared with someone you
live with.

Turn it on and the app generates a random 256-bit account key on your device
and shows it to you once. Everything you sync is encrypted with keys derived
from it before it leaves the browser, so the server stores ciphertext, the
record ids and the order they arrived in, and nothing it could read: not a
payee, not an amount, not an account name. Signing in on another device means
pasting the key; a wrong key is refused on the device itself, without a
request being made.

There is no password to reset, because there is no password, and that is the
point rather than a gap. A password can be guessed against a stolen database;
a 256-bit key cannot, so a dump of the server yields wrapped keys and no way
to unwrap them. Lose the key and the data on the server is unreadable to
everyone, you included, which is why the app asks you to save it somewhere
safe when it is shown. Your journal stays intact in every browser that has it,
and the CSV export needs no key at all.

Sharing works by code. Each account has a short share code; the owner of a
journal enters a partner's code, the partner accepts, and from then on both
devices push and pull the same encrypted records. The server can see that two
accounts share a journal and how many records it holds, and nothing else.

## What it costs

The app is free, and there is nothing to sign up for. No trial, no plan, no
payment of any kind in it. I will keep it that way for as long as I can: it
runs in your browser, the journal is a file you own, and neither one depends on
me being paid.

Sync is the part with a bill behind it — a server, a database, hourly backups
in another city — so sync is what will cost money. It is also the part you can
skip. The app is complete without an account, and a journal that stays on your
device is free to keep.

## What it runs on

Any modern browser, on any operating system. There is nothing to download to
try it. Install it as a web app and it opens in a window of its own on macOS,
Windows, Linux, Android and iOS, and works with no network at all. Your journal
stays in that browser on that device, plus whatever CSV you export. Turn sync
on and it follows you to another one.

## Who made it

One person, not a company. I am
[@lazydancer](https://github.com/lazydancer): I write it, and I run the server
it syncs to. What that server can and cannot see is written out on the app's
own privacy page. The source is private, so the check that does not depend on
trusting me is your browser's network log — it shows every request the page
sends.

## Report a problem

> **Never paste financial data.** No journal CSV, no bank statement, no account
> key, no share code, no screenshot with real numbers in it. Almost anything
> can be reproduced with the app's built-in sample journal ("Look around first"
> on the start screen) or with a few invented rows.

Have three things ready: the app version (the last line of Home, About, the
file page or the account page), your browser and its version, and the exact
steps you took. Check the
[open issues](https://github.com/lazydancer/whoami-money/issues) first and add
to an existing one rather than opening a twin. Then pick a form:

| Form                                                                                                 | Use it when                                                                        |
| ---------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- |
| [**Bug**](https://github.com/lazydancer/whoami-money/issues/new?template=bug.yml)                    | The app did something it should not have                                           |
| [**Import problem**](https://github.com/lazydancer/whoami-money/issues/new?template=import.yml)      | A bank file or paste was read wrongly or refused — describe its shape, never attach it |
| [**Idea**](https://github.com/lazydancer/whoami-money/issues/new?template=idea.yml)                  | Something the app does not do; the situation you were in is more useful than the feature |

Security problems go by email, not here — see [SECURITY.md](SECURITY.md).

## What happens next

I read them in order. A confirmed bug gets the `bug` label and a note when the
fix ships; an idea gets an honest reply about whether it fits. The measure for
every change is the same: a personal ledger is yours, it stays on your device,
and the app has to earn any exception.
