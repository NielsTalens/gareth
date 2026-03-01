---
title: User Flows
desc: describe the flows users can follow in the products. Think op happy flows but also include non-happy and edge cases.
---

# User Flow – Bulk bestelling plaatsen

## Summary
In enkele stappen meubels inkopen inclusief transport.

## Actor
Retail inkoper

## Preconditions
- Account aangemaakt
- Bedrijfsgegevens bekend

## Primary Flow (happy path)
1. Producten selecteren
2. Aantal kiezen
3. Transportoptie kiezen (snel / goedkoop / klimaatvriendelijk)
4. Totale prijs + levertijd tonen
5. Bevestigen
6. Automatische planning + tracking

## Alternate flows
- Minimale afname niet gehaald → melding
- Transportcapaciteit beperkt → alternatieve datum
- Douanedocument ontbreekt → automatische aanvraag

## Postconditions
Bestelling bevestigd + leverplanning zichtbaar.

## Success criteria (example metrics)
- <5 minuten besteltijd
- <15% drop-off in checkout
- 95% leverbetrouwbaarheid

## UI copy examples (short)
- “Kies je transport.”
- “Totale prijs inclusief levering.”
- “Levering gepland.”

---

# User Flow – Transportplanning wijzigen :contentReference[oaicite:4]{index=4}

## Summary
Leverdatum of transporttype aanpassen.

## Actor
Bestaande klant

## Preconditions
Actieve bestelling.

## Primary Flow (happy path)
1. Bestelling openen
2. “Wijzig transport”
3. Nieuwe optie kiezen
4. Prijs- en levertijdupdate tonen
5. Bevestigen

## Alternate flows
- Order al in haven → wijziging niet mogelijk
- Extra kosten → bevestiging vereist

## Postconditions
Planning aangepast en bevestigd.

## Success criteria (example metrics)
- Wijziging <2 minuten
- Geen handmatige interventie nodig

## UI copy examples (short)
- “Transport wijzigen.”
- “Nieuwe levertijd: 6 weken.”
- “Wijziging bevestigd.”
