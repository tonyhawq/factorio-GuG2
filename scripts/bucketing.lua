local bucketing = {}

function bucketing.setup()
    storage.current_bucket = 0
    storage.inserting_bucket = 0
    storage.buckets = {}
end

function bucketing.tick()
    storage.current_bucket = storage.current_bucket + 1
    local bucket = storage.buckets[storage.current_bucket]
    if bucket then
        for _, v in pairs(bucket) do
            _G[v.c].update(v.i)
        end
    end
end

function bucketing.add_once_per_second(item, global_container)
    storage.inserting_bucket = (storage.inserting_bucket % 59) + 1
    storage.buckets[storage.inserting_bucket] = storage.buckets[storage.inserting_bucket] or {n=0}
    local bucket = storage.buckets[storage.inserting_bucket]
    bucket[bucket.n + 1] = {i=item,c=global_container}
    bucket.n = bucket.n + 1
end

return bucketing