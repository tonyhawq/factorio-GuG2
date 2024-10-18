local bucketing = {}

function bucketing.setup()
    global.current_bucket = 0
    global.inserting_bucket = 0
    global.buckets = {}
end

function bucketing.tick()
    global.current_bucket = global.current_bucket + 1
    local bucket = global.buckets[global.current_bucket]
    if bucket then
        for _, v in pairs(bucket) do
            _G[v.c].update(v.i)
        end
    end
end

function bucketing.add_once_per_second(item, global_container)
    global.inserting_bucket = (global.inserting_bucket % 59) + 1
    global.buckets[global.inserting_bucket] = global.buckets[global.inserting_bucket] or {n=0}
    local bucket = global.buckets[global.inserting_bucket]
    bucket[bucket.n + 1] = {i=item,c=global_container}
    bucket.n = bucket.n + 1
end

return bucketing