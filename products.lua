game:GetService("MarketplaceService").ProcessReceipt = function(receiptInfo) 
	for i, player in ipairs(game.Players:GetChildren()) do
		if player.userId == receiptInfo.PlayerId then
			local stats = player:findFirstChild("leaderstats")
			local cash = stats:findFirstChild("Money")
	
			if receiptInfo.ProductId == 36465262 then --insert valid ID
			    cash.Value = cash.Value + 10000
			end
		
			if receiptInfo.ProductId == 36465269 then --insert valid ID
			    cash.Value = cash.Value + 50000
			end
		
			if receiptInfo.ProductId == 36465276 then --insert valid ID
			    cash.Value = cash.Value + 100000
			end
			
			if receiptInfo.ProductId == 36465286 then --insert valid ID
			    cash.Value = cash.Value + 500000
			end
						
			if receiptInfo.ProductId == 36465295 then --insert valid ID
			    cash.Value = cash.Value + 1000000
			end
			
			if receiptInfo.ProductId == 36465303 then --insert valid ID
			    cash.Value = cash.Value + 999999999
		    end		
	    end
    end
    
    return Enum.ProductPurchaseDecision.PurchaseGranted		
end
