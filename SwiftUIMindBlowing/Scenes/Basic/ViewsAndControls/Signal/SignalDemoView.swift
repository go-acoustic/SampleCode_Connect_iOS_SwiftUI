//
// Copyright (C) 2024 Acoustic, L.P. All rights reserved.
//
// NOTICE: This file contains material that is confidential and proprietary to
// Acoustic, L.P. and/or other developers. No license is granted under any intellectual or
// industrial property rights of Acoustic, L.P. except as may be provided in an agreement with
// Acoustic, L.P. Any unauthorized copying or distribution of content from this file is
// prohibited.
//
//  SignalDemoView.swift
//  SwiftUIMindBlowing
//
//  Created by ohernandezltkmac on 12/13/24.
//

import SwiftUI
import Connect

struct SignalDemoView: View {

    @State var randomValue = 0

    var body: some View {
        VStack(alignment: .center) {
            Divider()
            Button(action: {
                let values = [
                    "behaviorType": "identification",
                    "name": "identification from product page",
                    "category": "Behavior",
                    "identifierName": "email, sms, contactKey, whatsapp",
                    "identifierValue": "Value based on identifier",
                    "optIn": true,
                    "identificationFromLogin": true,
                    "effect": "positive"
                ] as [String : Any]
                ConnectCustomEvent().logSignal(values)
            }) {
                Text("Identification")
                    .frame(minWidth: 0, maxWidth: UIScreen.main.bounds.width-5)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 1)
                    )
            }
            Divider()
            Button(action: {
                let values = [
                    "signalType": "pageView",
                    "name": "pageView from product page",
                    "category": "Behavior",
                    "pageCategory": "Kitchen Accessories",
                    "url": "https://retail.acoustic-demo.com/en/women/2-9-brown-bear-printed-sweater.html#/1-size-s",
                    "effect": "positive"
                ] as [String : Any]
                ConnectCustomEvent().logSignal(values)
            }) {
                Text("Page View").frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 1)
                    )
            }
            Divider()
            Button(action: {
                let values = [
                    "signalType": "error",
                    "category": "Behavior",
                    "name": "error from product page",
                    "errorType": "user",
                    "errorText": "Minimum purchase not completed",
                    "errorIdentifier": "Error 400 Bad request",
                    "effect": "negative"
                ] as [String : Any]
                ConnectCustomEvent().logSignal(values)
            }) {
                Text("Error").frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 1)
                    )
            }
            Divider()
            Button(action: {
                let values = [
                    "signalType": "addToCart",
                    "category": "Behavior",
                    "name": "addToCart from product page",
                    "productId": "10",
                    "productName": "T-shirt",
                    "quantity": 10,
                    "shoppingCartUrl": "",
                    "promotionId": "2",
                    "effect": "positive"
                ] as [String : Any]
                ConnectCustomEvent().logSignal(values)
            }) {
                Text("Add-to-cart").frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 1)
                    )
            }
            Divider()
            Button(action: {
                let values = [
                    "signalType": "order",
                    "name": "order from product page",
                    "category": "Behavior",
                    "orderId": "UEKDXIPUE",
                    "orderSubtotal": 29,
                    "currency": "USD",
                    "orderShippingHandling": 7,
                    "orderDiscount": 0,
                    "price": 36,
                    "effect": "positive"
                ] as [String : Any]
                ConnectCustomEvent().logSignal(values)
            }) {
                Text("Order").frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 1)
                    )
            }
            Divider()
            Button(action: {
                let values = [
                    "signalType": "productView",
                    "category": "Behavior",
                    "name": "productView from product page",
                    "pageCategory": "Women Clothes",
                    "url": "https://retail.acoustic-demo.com/en/women/2-9-brown-bear-printed-sweater.html#/1-size-s",
                    "effect": "positive",
                    "productId": "251611194707",
                    "productName": "Women printed tshirt",
                    "productDescription": "The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design",
                    "price": 5253.6,
                    "attributes": "Excellent",
                    "additionalAttributes": "Black titanium structure",
                    "currency": "KYD",
                    "categories": "Clothes",
                    "discount": 10,
                    "productCategory": "Electronics",
                    "productUrl": "https://retail.acoustic-demo.com/en/women/2-9-brown-bear-printed-sweater.html#/1-size-s",
                    "productImageUrl": "https://retail.acoustic-demo.com/en/women/2-9-brown-bear-printed-sweater.html#/1-size-s",
                    "shoppingCartUrl": "https://quick-chutney.info",
                    "virtualCategory": "Women",
                    "availability": "available",
                    "brandName": "Torp - VonRueden",
                    "brandDescription": "Modern",
                    "model": "Handmade",
                    "MSRP": 8522.04,
                    "SKU": "mywLkawDpPUF",
                    "productStatus": "active",
                    "productRating": 1,
                    "dateAdded": "2024-12-03T00:32:32.793Z"
                ] as [String : Any]
                ConnectCustomEvent().logSignal(values)
            }) {
                Text("Product view").frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 1)
                    )
            }
            Divider()
            Button(action: {
                let values = [
                    "signalType": "productConfiguration",
                    "name": "productConfiguration from product page",
                    "category": "Behavior",
                    "productId": "03456889",
                    "productName": "Today is a good day framed poster",
                    "configurationType": "dimension change",
                    "effect": "positive"
                ] as [String : Any]
                ConnectCustomEvent().logSignal(values)
            }) {
                Text("Product configuration").frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 1)
                    )
            }
            Divider()
            Button(action: {
                let values = [
                    "signalType": "productPurchase",
                    "name": "productPurchase from product page",
                    "category": "Behavior",
                    "productId": "10",
                    "productName": "Today is a good day Framed poster-Dimension 40x60cm",
                    "quantity": 1,
                    "currency": "USD",
                    "effect": "positive"
                ] as [String : Any]
                ConnectCustomEvent().logSignal(values)
            }) {
                Text("Product purchase").frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 1)
                    )
            }
            Divider()
            Button(action: {
                let values = [
                    "signalType": "richMediaInteraction",
                    "name": "richMediaInteraction from product page",
                    "category": "Behavior",
                    "mediaId": "blob:https://www.nike.com/52abbeb9-e9f1-45fb-abbc-e51578224825",
                    "url": "https://www.nike.com/mx/",
                    "mediaCategory": "home page",
                    "mediaName": "video",
                    "interactionType": "click",
                    "effect": "positive"
                ] as [String : Any]
                ConnectCustomEvent().logSignal(values)
            }) {
                Text("Rich media interaction").frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 1)
                    )
            }
            Divider()
            Button(action: {
                let values = [
                    "signalType": "onSiteSearch",
                    "name": "onSiteSearch from product page",
                    "category": "Behavior",
                    "searchTerm": "frame",
                    "numberOfResults": 4,
                    "effect": "positive"
                ] as [String : Any]
                ConnectCustomEvent().logSignal(values)
            }) {
                Text("On-site Search").frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 1)
                    )
            }
            Divider()
        }
        .navigationBarTitle(Text("Behavioral Signal Types"))
    }
}
