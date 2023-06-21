CREATE OR REPLACE PROCEDURE GetPaymentMethodDetails IS
    CURSOR PaymentMethodCursor IS SELECT payment_method_id, payment_method_name FROM payment_method;

    PaymentMethodRecord PaymentMethodCursor%ROWTYPE;

    CURSOR PurchaseCursor(PaymentMethodID INTEGER) IS SELECT purchase_id, purchase_date, user_account_buyer FROM purchase WHERE payment_method_id = PaymentMethodID;

    PurchaseRecord PurchaseCursor%ROWTYPE;
BEGIN
    OPEN PaymentMethodCursor;

    FETCH PaymentMethodCursor INTO PaymentMethodRecord;

    WHILE PaymentMethodCursor%FOUND LOOP
        -- Print the current payment method
        DBMS_OUTPUT.PUT_LINE('Payment Method ID: ' || PaymentMethodRecord.payment_method_id || ', Name: ' || PaymentMethodRecord.payment_method_name);

        OPEN PurchaseCursor(PaymentMethodRecord.payment_method_id);

        FETCH PurchaseCursor INTO PurchaseRecord;

        WHILE PurchaseCursor%FOUND LOOP
            -- Print the current purchase
            DBMS_OUTPUT.PUT_LINE('    Purchase ID: ' || PurchaseRecord.purchase_id || ', Date: ' || TO_CHAR(PurchaseRecord.purchase_date, 'YYYY-MM-DD') || ', Buyer ID: ' || PurchaseRecord.user_account_buyer);

            FETCH PurchaseCursor INTO PurchaseRecord;
        END LOOP;

        CLOSE PurchaseCursor;

        FETCH PaymentMethodCursor INTO PaymentMethodRecord;
    END LOOP;

    CLOSE PaymentMethodCursor;
END;